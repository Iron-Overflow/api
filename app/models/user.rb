class User < ActiveRecord::Base
has_many :answers
has_many :questions
has_one :question_vote
has_one :answer_vote

end
