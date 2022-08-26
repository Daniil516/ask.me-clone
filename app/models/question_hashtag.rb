class QuestionHashtag < ApplicationRecord
  belongs_to :hashtag
  belongs_to :question

  before_validation :set_body, :set_hashtag_id

  def set_body
    if body.nil?
      self.body = self.hashtag.body
    end
  end

  #Если хэштег ранее использовался юзерами прикрепляем хэштег вопроса к нему
  def set_hashtag_id
    if Hashtag.where(body: body).present?
      existing_hashtag = Hashtag.where(body: body).first
      self.hashtag_id = existing_hashtag.id
    end
    debugger
  end

end
