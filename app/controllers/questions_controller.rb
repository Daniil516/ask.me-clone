class QuestionsController < ApplicationController
  before_action :set_question, only: %i[show edit destroy update hide]

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to user_path(@question.user), notice: "New question is created!" #without helper path: "/questions/#{@question.id}"
    else
      flash.now[:alert] = "Something went wrong!"
      render :new
    end
  end

  def update
    if @question.update(question_params)
      redirect_to user_path(@question.user), notice: "Question is edited!" #without helper path: "/questions/#{@question.id}"
    else
      flash.now[:alert] = "Something went wrong!"
      render :edit
    end

  end

  def destroy
    @user = @question.user
    @question.destroy
    redirect_to user_path(@user), notice: "Question is deleted!"
  end

  def show
    @question
  end

  def index
    @question = Question.new#для используемого паршла.
    @questions = Question.all
  end

  def new
    debugger
    @user = User.find(params[:user_id])
    @question = Question.new(user_id: @user.id)
  end

  def edit
    @question
  end

  def hide
    @question.update(hidden: true)
    redirect_to question_path(@question), notice: "Question is hidden now"
  end

  private

  def question_params
    params.require(:question).permit(:body, :user_id)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end
