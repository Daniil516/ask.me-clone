class HashtagsController < ApplicationController

  def show
    (@hashtag = Hashtag.find_by(body: "##{params[:body]}")) or not_found
    @questions = @hashtag&.questions
  end
end
