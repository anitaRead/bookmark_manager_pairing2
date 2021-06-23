require 'sinatra/base'
require 'sinatra/reloader'
require 'pg'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmark_list = Bookmark.all
    erb :"bookmarks/bookmark"
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
  end

  get '/bookmarks/new' do
    erb :"bookmarks/add"
  end


  run! if app_file == $0
end
