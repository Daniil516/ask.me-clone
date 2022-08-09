class QuestionsController < ApplicationController
  before_action :set_question, only: %i[show edit destroy update hide]

  def create
    @question = Question.create(question_params)
    redirect_to question_path(@question), notice: "New question is created!" #without helper path: "/questions/#{@question.id}"
  end

  def update
    @question.update(question_params)
    redirect_to question_path(@question), notice: "Question is updated!"
  end

  def destroy
    @question.destroy
    redirect_to questions_path, notice: "Question is deleted!"
  end

  def show
    @question
  end

  def index
    @question = Question.new#для используемого паршла.
    @questions = Question.all
  end

  def new
    @question = Question.new
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
