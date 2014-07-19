class AnswersController < ApplicationController

  def create
    question= Question.find(params[:question_id])
    question.answers.create(answer_params)
    redirect_to :questions
  end

  def answer_params
    params.require(:answer).permit(:content, :email)
  end
end