class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    # render json: Question.all
  end

  def create

    # question = Question.new(user_id: params[:user_id], title: params[:title],
    #   body: params[:body], category: params[:category], created_at: params[:created_at])
    #
    # if question.save
    #   render json: question
    # else
    #   render json: question.errors
    # end
  end

  def show
    # @question = Question.find(params[:id])
    # @user = User.find(params[:id], params[:question_id])
    # @answer = Answer.find(params[:id], params[:question_id], params[:username])
    # render json: {
    #   title: @question.title,
    #   body: @question.body,
    #   username: @question.user.username,
    #   answers: @answer.body,
    #   useranswer: @answer.user.username
    # }
    # if question.access_token == params[:auth_token]
    #   render json: question
    # else
    #   render json: question
    # end
  end

  def update
    # question = Question.find(params[:id])
    # if question.user.auth_token == params[:auth_token]
    #   if question.save
    #     render json: question
    #   else
    #     render json: question.errors
    #   end
    # end
  end

  def destroy
    question = Question.find(params[:id])
    if question.user.auth_token == params[:auth_token]
      if question.destroy
        render json: "Your question has been deleted."
      else
        render json: question.errors
      end
    end
  end

  def get_answer
    @answers = Answer.where(params[:question_id])
  end

  # def get_answer
  #   @answers = Answer.where(params[:question_id])
  # end

 #  private
 #  def question_params
 #   params.require(:question).permit(:user_id, :title, :body, :question_votes)
 # end

end
