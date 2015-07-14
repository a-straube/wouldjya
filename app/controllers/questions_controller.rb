class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.option1tally = 0
    @question.option2tally = 0
    @question.save
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def upvote1
    @question = Question.find(params[:id])
    @question.update_attributes(:option1tally => @question.option1tally + 1)
    @question.save
    redirect_to questions_path
  end

  def upvote2
    @question = Question.find(params[:id])
    @question.update_attributes(:option2tally => @question.option2tally + 1)
    @question.save
    redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(:option1, :option2)
  end
end
