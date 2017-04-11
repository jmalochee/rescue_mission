class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
    @answers = @question.answers.all.order(created_at: :asc)
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
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
    require "pry"
    binding.pry
    @question = Question.find(params[:id])

    if @question.update_attributes(question_params)
      flash[:notice] = 'nice. you do update'
      redirect_to question_path(@question)
    else
      flash[:alert] = 'no good update. you bad.'
      render :edit
    end
  end

  def destroy
    Question.find(params[:id]).answers.destroy_all
    Question.find(params[:id]).destroy
    flash[:alert] = 'game over, dude! game over!'
    redirect_to "/"
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :description, :user_id)
  end
end
