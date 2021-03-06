class User < ActiveRecord::Base
  before_create :auth_token
  has_secure_password

  has_many :answers
  has_many :questions
  has_one :question_vote
  has_one :answer_vote

  # validates :username, :email, :password, presence: true
  # validates :email, uniqueness: true
  #
  def token
    begin
      self.token = SecureRandom.hex
    end while self.class.exists?(token: auth_token)
  end

end
