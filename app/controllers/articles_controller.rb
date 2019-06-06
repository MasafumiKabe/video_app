class ArticlesController < ApplicationController
  before_action :correct_user, only: [:destroy]

  def show
    @user = User.find(params[:id])
    @article = Article.find(params[:id])
    @articles = current_user.articles.order('created_at DESC').page(params[:page])
  end

  def new
    @article = current_user.articles.build
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:success] = "動画を投稿しました。"
      redirect_to root_url
    else
      flash.now[:danger] = "動画の投稿に失敗しました。"
      render :new
    end
  end

  def destroy
    @article.destroy
    flash[:success] = '動画を削除しました。'
    redirect_to root_url
  end
  
  private
  
  def article_params
    params.require(:article).permit(:title, :video, :description)
  end

  def correct_user
    @article = current_user.articles.find_by(id: params[:id])
    unless @article
      redirect_to root_url
    end
  end
end
