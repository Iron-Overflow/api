class Answer < ActiveRecord::Base
  has_many :answer_votes
  belongs_to :question
  belongs_to :user

  validates :body, presence: true

  def updownvote
    @up_votes = self.votes.where(up_votes: true).count
    @down_votes = self.votes.where(down_votes: false).count
    @vote_rating = @up_votes - @down_votes
  end
  # def show
  #   answer = Answer.find(params[:question_id])
  # end

  # def user_name
  #   user.user_name
  # end

end
