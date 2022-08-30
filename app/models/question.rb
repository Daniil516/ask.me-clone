class Question < ApplicationRecord
  HASHTAG_PATTERN = /#[[:word:]-]+/

  validates :body, presence: true, length: { maximum: 280 }

  after_save :find_hashtags
  after_commit :save_hashtags

  belongs_to :user
  belongs_to :author, class_name: "User", optional: true

  has_many :question_hashtags, dependent: :destroy
  has_many :hashtags, through: :question_hashtags

  def find_hashtags
    @hashtags = body.concat(" #{answer}").downcase.scan(HASHTAG_PATTERN)
  end

  def save_hashtags
    @hashtags&.uniq&.each do |hashtag|
      hashtag_to_find = Hashtag.where(body: hashtag)

      if hashtag_to_find.present?
        hashtag_to_find[0].question_hashtags.create(question_id: id)
      else
        self.hashtags.create(body: hashtag)
      end
    end
  end
end
