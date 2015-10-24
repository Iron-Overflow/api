class Answer < ActiveRecord::Base
  has_many :answer_votes
  belongs_to :question
  belongs_to :user

  def show
    answer = Answer.find(params[:question_id])
  end
end
