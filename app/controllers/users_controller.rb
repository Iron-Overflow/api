class UsersController < ApplicationController
  # before_action :check_login, except: [:create]
  # before_action :set_user, except: [:create]
  # before_action :check_user, only: [:update, :destroy]

  def index
    # render json: User.all
    @users = User.all
    render json: @users
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: user
    else
      render json: user.errors
    end
  end

  def new
    @user = User.new
  end

  def update
    user = User.find(params[:id])
    if user.auth_token == params[:auth_token]
      user.update(user_params) ? (render 'show'):(render 'error')
    end
    # @user.update(user_params)
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  #   user = User.find(params[:id])
  #   if user.auth_token == params[:auth_token]
  #     user.update(user_params) ? (render 'show'):(render 'error')
  #   end
  # end
  end

  def destroy
    @user.destroy
    render json: "Member has been deleted."
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

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
