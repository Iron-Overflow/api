class AnswersController < ApplicationController
  def index
    answers = Answer.group(params[:question_id]).count
    render json: Answer.all
  end

  def create
    answer = Answer.new(question_id: params[:question_id], user_id: params[:user_id],
        body: params[:body], accepted: params[:accepted])
    if answer.user.auth_token == params[:auth_token]
      if answer.save
        render json: answer
      else
        render json: answer.errors
      end
    end
  end

  def show
    render json: Answer.find(params[:id])
  end

  def update
    answer = Answer.find(params[:id])
    if answer.user.auth_token == params[:auth_token]
      if answer.save
        render json: answer
      else
        render json: answer.errors
      end
    end
  end

  def destroy
    answer = Answer.find(params[:id])
    if answer.user.auth_token == params[:auth_token]
      if answer.destroy
        render json: "Answer has been deleted"
      else
        render json: answer.errors
      end
    end
  end

end
