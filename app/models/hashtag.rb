class Hashtag < ApplicationRecord
  HASHTAG_PATTERN = /#[[:word:]-]+/

  has_many :question_hashtags, dependent: :destroy
  has_many :questions, through: :question_hashtags

  private

end
