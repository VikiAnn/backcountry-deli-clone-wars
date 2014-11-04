require 'bundler'
Bundler.require


class BackCountryApp < Sinatra::Base
  get '/' do
    erb :index, locals:{page_name: :index,
                        title: "Home - Backcountry Delicatessen",
                        body_class: "home page-id-2"}
  end
  # home page page-id-2 page-template page-template-page-home-php

  get '/customer_policies' do 
    erb :customer_policies, locals:{page_name:  :customer_policies,
                                    title:  "Backcountry Policies - Backcountry Delicatessen",
                                    body_class:  "page page-id-436 page-template-default"}
  end

  get '/our_story' do
    erb :our_story, locals:{page_name: :our_story,
                            title: "Our Story - Backcountry Delicatessen",
                            body_class: "page page-id-6 page-template-default"}
  end

  get '/order_glenarm_denver' do 
    erb :order_glenarm_denver, locals:{page_name:  :order_glenarm_denver,
                                       title:  "Order Online - Denver 17th & Glenarm - Backcountry Delicatesse",
                                       body_class:  "page page-id-643 page-template page-template-page-home-php"}
  end

  get '/customer_policies' do
    erb :customer_policies, locals:{page_name:  :customer_policies,
                                    title:  "Backcountry Policies - Backcountry Delicatessen",
                                    body_class:  "page page-id-436 page-template-default"}
  end

  get '/order_fort_collins' do 
    erb :order_fort_collins, locals:{page_name:  :order_fort_collins,
                                     title: "Order Online – Fort Collins - Backcountry Delicatessen",
                                     body_class:  "page page-id-530 page-child parent-pageid-131 page-template page-template-page-home-php" }
  end

  get '/social' do
    erb :social, locals:{page_name: :social,
                         title: "Social Love - Backcountry Delicatessen",
                         body_class: "page page-id-207 page-template-default"
                         }
  end

  get '/franchise' do
    erb :franchise, locals:{page_name: :franchise,
                            title:  "Franchise Info",
                            body_class:  "page page-id-7 page-template-default"}
  end

  get '/contact_us' do
    erb :contact_us, locals:{page_name: :contact_us,
                            title: "Contact Us - Backcountry Delicatessen",
                            body_class: "page page-id-8 page-template-default"
                            }
  end

  get '/specialty_sandwiches' do
    erb :specialty_sandwiches, locals:{page_name: :specialty_sandwiches,
                                       title: "Specialty Sandwiches",
                                       body_class:  "page page-id-9 page-parent page-template-default" }
  end

  get '/hot_breakfast_sandwiches' do
<<<<<<< HEAD
    erb :hot_breakfast_sandwiches, locals:{page_name: :breakfast,
                                           title: "Hot Breakfast Sandwiches",
                                           body_class: "page page-id-51 page-child parent-pageid-9 page-template page-template-page-menu-php"}
=======
    erb :hot_breakfast_sandwiches, locals:{page_name: :hot_breakfast_sandwiches,
                                           title:  "Hot Breakfast Sandwiches - Backcountry Delicatessen",
                                           body_class:  "page page-id-51 page-child parent-pageid-9 page-template page-template-page-menu-php"}
>>>>>>> adam-layout-clean
  end

  get '/build_your_own' do
    erb :build_your_own, locals:{page_name: :build_your_own,
                                 title: "Build Your Own Sandwich - Backcountry Delicatessen",
                                 body_class: "page page-id-49 page-child parent-pageid-9 page-template page-template-page-menu-php"}
  end
  # "page page-id-49 page-child parent-pageid-9 page-template page-template-page-menu-php"

  get '/salads_soups_sides_drinks' do
    erb :salads_soups_sides_drinks, locals:{page_name:  :salads_soups_sides_drinks,
                                            title: "Salads, Soups, Sides, Drinks - Backcountry Delicatessen",
                                            body_class:  "page page-id-47 page-child parent-pageid-9 page-template page-template-page-menu-php"}
  end

  get '/catering_menu' do
    erb :catering_menu, locals:{page_name: :catering_menu,
                                title: "Catering Menu - Backcountry Delicatessen",
                                body_class: "page page-id-299 page-child parent-pageid-9 page-template page-template-page-menu-php"
                                }
  end

  get '/location_steamboat_springs_co' do
    erb :location_steamboat_springs_co, locals:{page_name: :steamboat,
                                                title: "Steamboat Springs, CO - Backcountry Delicatessen",
                                                body_class: "page page-id-11 page-child parent-pageid-10 page-template page-template-page-location-php"}
  end

  get '/location_denver_lodo_co' do
    erb :location_denver_lodo_co, locals:{page_name:  :location_denver_lodo_co,
                                          title:  "Denver, CO - Backcountry Delicatessen",
                                          body_class:  "page page-id-17 page-child parent-pageid-10 page-template page-template-page-location-php"}
  end

  get '/location_denver_downtown_co' do
    erb :location_denver_downtown_co, locals:{page_name: :downtown,
                                              title: "Denver 17th & Glenarm - Backcountry Delicatessen",
                                              body_class: "page page-id-653 page-child parent-pageid-10 page-template page-template-page-location-php"}
  end

  get '/location_fort_collins_co' do
    erb :location_fort_collins_co, locals:{page_name: :location_fort_collins_co,
                                           title: "Fort Collins, CO - Backcountry Delicatessen",
                                           body_class: "page page-id-15 page-child parent-pageid-10 page-template page-template-page-location-php"
                                           }
  end

  get '/location_jackson_hole_wy' do
    erb :location_jackson_hole_wy, locals:{page_name:  :location_jackson_hole_wy,
                                           title:  "Jackson Hole, WY - Backcountry Delicatessen",
                                           body_class:  "page page-id-13 page-child parent-pageid-10 page-template page-template-page-location-php" }
  end

  get '/order_wazee_denver' do
    erb :order_wazee_denver
  end
end
