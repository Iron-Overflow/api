class UsersController < ApplicationController
  before_action :check_login, except: [:create]
  before_action :set_user, except: [:create]
  before_action :check_user, only: [:update, :destroy]

  def create
    @user = User.new(user_params)
    @user.save ? (render 'show'):(render 'error')
  end

  def update
    @user.update(user_params) ? (render 'show'):(render 'error')
  end

  def show
  end

  def destroy
    @user.destroy
    render json: "User has been deleted!"
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def set_user
    begin
      @user = User.find(params[:id])
    rescue
      render 'not_found'
    end
  end

  #def makesureUserIsVALID
  #end
end
end