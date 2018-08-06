class UsersController < ApplicationController

  def index

  end

  def create
    @user = User.new(user-params)
    if @user.save
      log_in  @user
      redirect_to user
    else
      render  'new'
    end
  end

  def new

  end

  def edit

  end

  def show

  end
  
end
