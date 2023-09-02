class QuestionsController < ApplicationController
  before_action :find_question!, only: [:edit, :update, :show, :destroy]

  def edit
  end

  def update
    if @question.update question_params
      flash[:success] = "Question Updated"
      redirect_to question_path
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    flash[:success] = "Question Deleted"
    redirect_to questions_path
  end

  def show
  end

  def index
    @questions = Question.all
  end
  def new
    @question = Question.new
  end
  
  def create
    @question = Question.new question_params
    if @question.save
      flash[:success] = "Question Created!"
      redirect_to questions_path
    else
      render :new
    end
  end

  private
  
    def question_params
      params.require(:question).permit(:title, :body)
    end

    def find_question!
      @question = Question.find(params[:id])
    end
end