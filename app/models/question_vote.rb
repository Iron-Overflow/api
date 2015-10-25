class QuestionVote < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  # DOUG: think this will work here too?
  # def updownvote
  #   @up_votes = self.votes.where(rating: true).count
  #   @down_votes = self.votes.where(rating: false).count
  #   @vote_rating = @up_votes - @down_votes
  # end

end
