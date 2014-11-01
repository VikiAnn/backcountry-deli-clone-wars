require 'bundler'
Bundler.require

class BackCountryApp < Sinatra::Base 
  get '/' do 
    erb :index
  end

end