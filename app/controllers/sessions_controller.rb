class SessionsController < ApplicationController

  def create
    if params[:user]
      user = User.find_by(username: params[:user][:username])
      if user
        if user.authenticate(params[:user][:password])
          user.auth_token = SecureRandom.hex
          user.save
          render json: user
        else
          render json: {error: "Login failed. Please try again."}
        end
      else
        render json: {error: "User could not be found."}
      end
    else
      render json: {error: "Params error."}
    end
  end

  # @user = User.find_by(params[:username])
  # if user && user.authenticate(params[:password])
  #   generate_token
  #   user.save
  # else
  #   render json: "Login failed"
  # end

  def destroy
    user.auth_token = nil
  end

end
