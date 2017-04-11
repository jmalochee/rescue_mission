class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @question = Question.new
  end

  def edit

  end

  def create
    @question = Question.new(question_params)

    if @question.save
      flash[:notice] = 'you make question. good job you do'
      redirect_to question_path(@question)
    else
      flash[:alert] = 'you make bad. no good question.'
      render :new
    end
  end

  def update

  end

  def destroy

  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :description, :user_id)
  end
end
