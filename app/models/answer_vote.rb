class AnswerVote < ActiveRecord::Base
  belongs_to :answer
  belongs_to :user

  def updownvote
    @up_votes = self.votes.where(rating: true).count
    @down_votes = self.votes.where(rating: false).count
    @vote_rating = @up_votes - @down_votes
  end
end
