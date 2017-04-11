class AnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    binding.pry
    @answer = Answer.new(answer_params)
    @answer.question = @question

    if @answer.save
      flash[:notice] = 'you make answer. good job you do'
      redirect_to question_path(@question)
    else
      flash[:alert] = 'you make bad. no good answer.'
      render :new
    end
  end

  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  private

  def answer_params
    params.require(:answer).permit(:description, :user_id)
  end
end
