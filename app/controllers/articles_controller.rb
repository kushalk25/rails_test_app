class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        article = Article.find(params[:id])

        article.title = params[:title]
        article.body = params[:body]
        article.save

        redirect_to articles_url
    end

    def create
        title = params[:title]
        body = params[:body]

        article = Article.new(title: title, body: body)
        article.save

        redirect_to articles_url
    end

    def destroy
        puts 'DELETING!!!!'
        article = Article.find(params[:id])
        article.destroy
        redirect_to articles_url
    end


end
