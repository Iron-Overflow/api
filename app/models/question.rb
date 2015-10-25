class Question < ActiveRecord::Base
  belongs_to :user
  has_many :question_votes
  has_many :answers

  validates :title, :body, presence: true

  def updownvote
    @up_votes = self.votes.where(up_votes: true).count
    @down_votes = self.votes.where(down_votes: false).count
    @vote_rating = @up_votes - @down_votes
  end
  
end
