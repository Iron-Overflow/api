class Question < ActiveRecord::Base
  belongs_to :user
  has_many :votes
  has_many :answers

  # validates :title, :body, presence: true

  def vote_rating
    @up_votes = self.votes.where(up_down: true).count
    @down_votes = self.votes.where(up_down: false).count
    @vote_rating = @up_votes - @down_votes
  end

end
