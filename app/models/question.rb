class Question < ActiveRecord::Base
  belongs_to :user
  has_many :votes
  has_many :answers

  # validates :title, :body, presence: true

  def username
    user.username
  end

  def vote_rating
    @up_votes = self.votes.where(up_down: true).count
    @down_votes = self.votes.where(up_down: false).count
    @vote_rating = @up_votes - @down_votes
  end

  # DOUG: check this out and tell me what you think.
  # def selected_answer
  #   all_answers = []
  #   self.answers.each do |a|
  #     all_answers << {
  #       accepted: a.accepted
  #     }

  # Maybe hash should include answer id and body? and it needs rating

  # end

  def updownvote
    @up_votes = self.votes.where(up_votes: true).count
    @down_votes = self.votes.where(down_votes: false).count
    @vote_rating = @up_votes - @down_votes
  end

end
