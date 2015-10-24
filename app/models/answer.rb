class Answer < ActiveRecord::Base
  has_many :answer_votes
  belongs_to :question
  belongs_to :user
end
