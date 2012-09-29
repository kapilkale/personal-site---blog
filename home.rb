require 'sinatra'
require 'haml'

get '/blog/:post/?' do
  File.read(File.join('public/blog', "#{params[:post]}", "index.html"))
end

get '/' do
  haml :home
end

get '/blog/?' do
  haml :blog
end