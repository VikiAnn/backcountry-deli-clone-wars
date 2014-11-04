require 'bundler'
Bundler.require

class BackCountryApp < Sinatra::Base
  get '/' do
    erb :index, locals:{page_name: :index,
                        title: "Home - Backcountry Delicatessen",
                        body_class: "home page-id-2"}
  end
  # home page page-id-2 page-template page-template-page-home-php

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
    erb :build_your_own, locals:{title: "Build Your Own Sandwich - Backcountry Delicatessen",
                                 body_class: "page page-id-49"}
  end
  # "page page-id-49 page-child parent-pageid-9 page-template page-template-page-menu-php"

  get '/salads_soups_sides_drinks' do
    erb :salads_soups_sides_drinks
  end

  get '/catering_menu' do
    erb :catering_menu
  end

  get '/location_steamboat_springs_co' do
    erb :location_steamboat_springs_co
  end

  get '/location_denver_lodo_co' do
    erb :location_denver_lodo_co
  end

  get '/location_denver_downtown_co' do
    erb :location_denver_downtown_co
  end

  get '/location_fort_collins_co' do
    erb :location_fort_collins_co
  end

  get '/location_jackson_hole_wy' do
    erb :location_jackson_hole_wy
  end

  get '/order_wazee_denver' do
    erb :order_wazee_denver
  end
end
