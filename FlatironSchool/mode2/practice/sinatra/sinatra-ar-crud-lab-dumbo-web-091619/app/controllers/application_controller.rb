
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/articles' do
    @articles = Article.all
    erb :index
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles/' do
    @article = Article.create(:title => params[:title], :content => params[:content])
    redirect "/articles/#{@article.id}"
  end

  patch '/articles/:id' do
    @article = Article.all.find(params[:id])
    @article.update(title: params[:title], content: params[:content])
    @article.save
    # @article.reload => not neccessary
    erb :show
  end

  get '/articles/:id' do
    @article = Article.find(params[:id])
    erb :show
  end

  get '/articles/:id/edit' do
    @article = Article.find(params[:id])
    erb :edit
  end

  delete '/articles/:id' do
    Article.delete(params[:id])
    redirect "/articles"
  end
  
end
