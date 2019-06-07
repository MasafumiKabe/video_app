class ToppagesController < ApplicationController
  def index
    if user_signed_in?
      @articles = Article.order('created_at DESC').page(params[:page])
    end
  end
end
