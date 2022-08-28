class Question < ApplicationRecord
  validates :body, presence: true, length: { maximum: 280 }
  before_validation :find_hashtags
  after_commit :save_hashtags

  belongs_to :user
  belongs_to :author, class_name: "User", optional: true

  has_many :question_hashtags, dependent: :destroy
  has_many :hashtags, through: :question_hashtags

  def find_hashtags
    hashtag_pattern = /#[[:word:]-]+/
    @hashtags = (body + answer.to_s).downcase.scan(hashtag_pattern)
  end

  def save_hashtags
    self.hashtags.destroy_all
    
    @hashtags&.uniq&.each do |hashtag|
      if Hashtag.where(body: hashtag).present?
        Hashtag.where(body: hashtag)[0].question_hashtags.create(question_id: id)
      else
        self.hashtags.create(body: hashtag)
      end
    end
  end
end
