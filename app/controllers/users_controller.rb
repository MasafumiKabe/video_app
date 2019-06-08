class UsersController < ApplicationController
  before_action :require_user_logged_in
  
  def index
    @users = User.all.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.articles.order('created_at DESC').page(params[:page])
  end
end
