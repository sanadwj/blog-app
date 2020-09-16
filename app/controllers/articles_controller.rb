class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end
  
  def destroy
    @article = Article.find(params[:id])
    # flash.notice = "Article '#{@article.title}' Destroyed!"
    @article.destroy
    redirect_to article_path
  end
end
