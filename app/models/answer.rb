class Answer < ActiveRecord::Base
  has_many :votes
  belongs_to :question
  belongs_to :user

  # validates :body, presence: true
  def username
    user.username
  end

  def vote_rating
    @up_votes = self.votes.where(up_down: true).count
    @down_votes = self.votes.where(up_down: false).count
    @vote_rating = @up_votes - @down_votes
  end

  # def show
  #   answer = Answer.find(params[:question_id])
  # end

  # def user_name
  #   user.user_name
  # end

end
