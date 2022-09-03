class HashtagsController < ApplicationController

  def show
    @hashtag = Hashtag.find_by(body: "##{params[:body]}")
    @questions = @hashtag&.questions or not_found
  end

  def not_found
    raise ActiveRecord::RecordNotFound.new('Record is not found')
  end

  def to_param
    body
  end
end
