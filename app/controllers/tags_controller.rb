class TagsController < ApplicationController
  before_action :require_login, only: [:destroy]
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id])
    flash.notice = "Tag '#{@tag}' Destroyed!"
    @tag.destroy
    
    redirect_to tags_path
  end
end
