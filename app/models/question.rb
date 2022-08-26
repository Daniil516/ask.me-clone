class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: "User", optional: true

  has_many :question_hashtags
  has_many :hashtags, through: :question_hashtags

  validates :body, presence: true, length: { maximum: 280 }

  before_validation :find_hashtags
  after_commit :save_hashtags

  def find_hashtags
    @hashtags = body.scan(/#[[:word:]-]+/)
    @hashtags += answer.scan(/#[[:word:]-]+/) if answer.present?
    @hashtags.map! { |elem| elem.downcase }
  end

  def save_hashtags
    #Чистим старые хэштеги вопроса на случай апдейта вопроса
    self.hashtags.destroy_all if self.persisted?

    #Если хэштег был использован кем то ранее в других вопросах,
    # то нам незачем создавать его повторно. Просто инициализируем его для конкретного вопроса, а не в общем
    @hashtags.uniq.each do |hashtag|
      if Hashtag.where(body: hashtag).present?
        self.question_hashtags.create(body: hashtag)
      else
        self.hashtags.create(body: hashtag)
      end
    end
  end
end
