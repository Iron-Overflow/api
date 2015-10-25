class UsersController < ApplicationController
  before_action :check_login, except: [:create]
  before_action :set_user, except: [:create]
  before_action :check_user, only: [:update, :destroy]

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    end
  end

  def update
    @user.update(user_params)
    # user = User.find(params[:id])
    # if user.auth_token == params[:auth_token]
    #   user.update(user_params) ? (render 'show'):(render 'error')
    # end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user.destroy
    # user = User.find(params[:id])
    # if user.auth_token == params[:token]
    #   if user.destroy
    #     render json: "User has been deleted!"
    #   else
    #     render json: user.errors
    #   end
    # end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
