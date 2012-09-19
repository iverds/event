class ArticlesController < ApplicationController
  def index
    @article = Article.new
  end

  def new
    @article = Article.new
  end
end
