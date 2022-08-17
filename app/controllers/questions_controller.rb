class QuestionsController < ApplicationController
  before_action :ensure_current_user, only: %i[update destroy edit hide]
  before_action :set_question_for_current_user, only: %i[edit destroy update hide]

  def create
    question_params = params.require(:question).permit(:body, :user_id)
    @question = Question.new(question_params)
    if @question.save
      redirect_to user_path(@question.user), notice: "New question is created!" #without helper path: "/questions/#{@question.id}"
    else
      flash.now[:alert] = "Something went wrong!"
      render :new
    end
  end

  def update
    question_params = params.require(:question).permit(:body, :answer)
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
    @question = Question.find(params[:id])
  end

  def index
    @question = Question.new#для используемого паршла.
    @questions = Question.all
  end

  def new
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

  def set_question_for_current_user
    @question = current_user.questions.find(params[:id])
  end

  def ensure_current_user
    redirect_with_alert unless current_user.present?
  end
end
