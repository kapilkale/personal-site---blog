require 'sinatra'
require 'haml'

get '/' do
  haml :home
end

get '/blog' do
  haml :blog
end