class QuestionsController < ApplicationController
  def index
    @question = Question.new
    @questions = Question.all
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to(:questions)  
    else
      @questions = Question.all 
      render :index
    end
  end

  def question_params
    params.require(:question).permit(:title, :email)
  end
  end