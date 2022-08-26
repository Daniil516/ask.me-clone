class QuestionHashtag < ApplicationRecord
  belongs_to :hashtag
  belongs_to :question

  before_validation :set_body, :set_hashtag_id

  def set_body
    self.body = self.hashtag.body if body.nil?
  end

  #Если хэштег ранее использовался юзерами прикрепляем хэштег вопроса к нему
  def set_hashtag_id
    self.hashtag_id = Hashtag.where(body: body)&.first.id
  end
end
