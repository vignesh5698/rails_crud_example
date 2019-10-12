class UsersController < ApplicationController
  def index
    
  end

  def show
    @user = User.find(params[:id])
  end

  def show_all
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    @user.save

    redirect_to :action => "show_all"
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to :action => "show_all"
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :action => "show_all"
  end

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
  end
