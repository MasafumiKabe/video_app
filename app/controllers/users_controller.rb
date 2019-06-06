class UsersController < ApplicationController
  def index
    @users = User.all.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.articles.order('created_at DESC').page(params[:page])
  end
end
