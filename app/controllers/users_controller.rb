class UsersController < ApplicationController
  before_action :check_login, except: [:create]
  before_action :set_user, except: [:create]
  before_action :check_user, only: [:update, :destroy]

  def create
    @users = User.all
    # user = User.new(user_params)
    # user.save ? (render 'show'):(render 'error')
  end

  def update
    # user = User.find(params[:id])
    # if user.auth_token == params[:auth_token]
    #   user.update(user_params) ? (render 'show'):(render 'error')
    end
  end

  def show
    # render json: User.find(params[:id])
  end

  def destroy
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
    # params.require(:user).permit(:name, :email, :password)
  end

end
