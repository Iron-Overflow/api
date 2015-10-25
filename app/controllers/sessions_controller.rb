class SessionsController < ApplicationController

  def create
    @user = User.find_by(params[:email]) || User.find_by(params[:username])
    if user && user.authenticate(params[:password])
      generate_token
      user.save
    end
  end

  def destroy
    user = User.find(params[:user_id])
    user.auth_token = nil
    user.save
  end

  private

  def generate_token
    @user.auth_token = SecureRandom.hex
    @user.save
  end

end
