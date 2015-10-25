class Question < ActiveRecord::Base
  belongs_to :user
  has_many :question_votes
  has_many :answers

  # validates :title, :body, presence: true

  # DOUG: check this out and tell me what you think.
  # def selected_answer
  #   all_answers = []
  #   self.answers.each do |a|
  #     all_answers << {
  #       accepted: a.accepted
  #     }

  # Maybe hash should include answer id and body? and it needs rating

  # end
end
