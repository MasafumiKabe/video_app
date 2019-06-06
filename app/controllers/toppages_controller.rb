class ToppagesController < ApplicationController
  def index
    if user_signed_in?
      @articles = current_user.articles.order('created_at DESC').page(params[:page])
    end
  end
end
