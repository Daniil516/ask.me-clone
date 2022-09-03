class QuestionHashtag < ApplicationRecord
  belongs_to :hashtag
  belongs_to :question

  after_commit :destroy_blank_hashtag

  private

  def destroy_blank_hashtag
    hashtag = self.hashtag
    hashtag.destroy if hashtag.questions.blank?
  end
end
