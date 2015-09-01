class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up! You are now logged in!"
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def add_friend
  end


  def remove_friend
  end
end
