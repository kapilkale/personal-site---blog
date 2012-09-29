require 'sinatra'
require 'haml'

# Blog stuff.
get '/blog/?' do
  File.read(File.join('public/blog/index.html'))
end

get '/blog/:post/?' do
  File.read(File.join('public/blog', "#{params[:post]}", "index.html"))
end

# Homepage.
get '/' do
  haml :home
end
