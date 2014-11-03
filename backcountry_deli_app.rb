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

  get '/franchise' do
    erb :franchise
  end

  get '/contact_us' do
    erb :contact_us
  end

  get '/specialty_sandwiches' do
    erb :specialty_sandwiches
  end

  get '/hot_breakfast_sandwiches' do
    erb :hot_breakfast_sandwiches
  end

  get '/build_your_own' do
    erb :build_your_own
  end

  get '/salads_soups_sides_drinks' do
    erb :salads_soups_sides_drinks
  end
end
