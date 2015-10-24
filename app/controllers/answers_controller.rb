class AnswersController < ApplicationController
  def index
    answers = Answer.group(params[:question_id]).count
    render json: answers
    # respond_to do |format|
    #   format.html
    #   format.json {render json: Voter.all.to_json}
      # render json: Voter.all.to_json
    # end
  end

  def create
    answer = Answer.new(body: params[:body],
        question_id: params[:question_id],
        user_id: params[:user_id])

    if answer.save
      render json: answer
    else
      render json: answer.errors
    end
  end

  def destroy
    answer = Answer.find_by(auth_token: params[:auth_token])
    user.answer.destroy
    render json: "Answer has been deleted."
  end
end
