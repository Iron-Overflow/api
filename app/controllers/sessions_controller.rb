class SessionsController < ApplicationController

  def generate_token
    @user.auth_token = SecureRandom.hex
    @user.save
  end

  def create
    @user = User.find_by_email(params[:email])
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
end
