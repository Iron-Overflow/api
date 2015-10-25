class Question < ActiveRecord::Base
  belongs_to :user
  has_many :question_votes
  has_many :answers

  validates :title, :body, presence: true
end
