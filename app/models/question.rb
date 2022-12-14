class Question < ApplicationRecord
  validates :body, presence: true, length: {maximum: 280}

  after_save_commit :save_hashtags

  belongs_to :user
  belongs_to :author, class_name: "User", optional: true

  has_many :question_hashtags, dependent: :destroy
  has_many :hashtags, through: :question_hashtags, dependent: :destroy

  private

  def find_hashtags
    "#{body} #{answer}".downcase.scan(Hashtag::HASHTAG_PATTERN).map {|tag| tag[1..-1]}
  end

  def save_hashtags
    self.hashtags = find_hashtags.uniq.map {|hashtag| Hashtag.create_or_find_by(body: hashtag)}
  end
end
