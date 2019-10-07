class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }
    end
  end

  private

  def user_params
    params.permit(:name, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
