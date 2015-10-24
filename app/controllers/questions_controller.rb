class QuestionsController < ApplicationController

  def index
    render json: Question.all
  end

  def create
    q = Question.new(title: params[:title], inquiry: params[:inquiry])
    if q.save
      render json: q.to_json
    else
      render json: q.errors
    end
  end

  def show
    question = Question.find(params[:id])
    if question.access_token == params[:auth_token]
      render json: question
    else
      render json: question
    end
  end


end
