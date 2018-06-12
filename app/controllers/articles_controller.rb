class ArticlesController < ApplicationController

before_action :set_article, only: [:show, :edit, :update, :destroy]

def new
@article = Article.new
end

def create
  @article = Article.new(article_param)
  @article.save
  redirect_to '/articles'
end



def index
  @articles = Article.all
end

def show
end

def edit
end

def update
  @article.update(article_param)
  redirect_to '/articles'
end

def destroy
  @article.delete
  redirect_to '/articles'
end

private

def set_article
  @article = Article.find(params[:id])
end

def article_param
  params.require(:article).permit(:title, :content)
end

end
