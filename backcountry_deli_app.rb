require 'bundler'
Bundler.require

class BackCountryApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/our_story' do
    erb :our_story
  end

  get '/social' do
    erb :social
  end

end
