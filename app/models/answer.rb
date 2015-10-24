class Answer < ActiveRecord::Base
  has_many :answer_vote

  belongs_to :user
end
