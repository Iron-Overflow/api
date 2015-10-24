class User < ActiveRecord::Base
has_many :answer
has_many :question
has_one :question_vote
has_one :answer_vote

end
