class HashtagsController < ApplicationController
  def show
    @hashtag = Hashtag.joins(:questions).find_by!(body: params[:body])
    @questions = @hashtag.questions.includes(%i[author user question_hashtags hashtags])
  end
end
