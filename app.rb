require './lib/location_store'
require 'bundler'
Bundler.require

class App < Sinatra::Base
  set :method_override, true

  configure :development do
    DB = LocationStore.new('postgres://localhost/backcountry')
  end

  configure :production do
    DB = LocationStore.new(ENV["DATABASE_URL"])
  end

  get '/' do
    erb :index, locals:{page_name: :index,
                        title: "Home - Backcountry Delicatessen",
                        body_class: "home page-id-2",
                        locations: DB.all}
  end

  get '/customer_policies' do
    erb :customer_policies, locals:{page_name:  :customer_policies,
                                    title:  "Backcountry Policies - Backcountry Delicatessen",
                                    body_class:  "page page-id-436 page-template-default",
                                    locations: DB.all}
  end

  get '/order_steamboat' do
    erb :order_steamboat, locals:{page_name:  :order_steamboat,
                                  title:  "Order Online – Steamboat Springs - Backcountry Delicatessen",
                                  body_class:  "page page-id-541 page-child parent-pageid-131 page-template page-template-page-home-php",
                                  locations: DB.all}
  end

  get '/order_jackson' do
    erb :order_jackson, locals:{page_name:  :order_jackson,
                                title:  "Order Online – Jackson Hole - Backcountry Delicatessen",
                                body_class:  "page page-id-538 page-child parent-pageid-131 page-template page-template-page-home-php",
                                locations: DB.all}
  end

  get '/our_story' do
    erb :our_story, locals:{page_name: :our_story,
                            title: "Our Story - Backcountry Delicatessen",
                            body_class: "page page-id-6 page-template-default",
                            locations: DB.all}
  end

  get '/order_glenarm_denver' do
    erb :order_glenarm_denver, locals:{page_name:  :order_glenarm_denver,
                                       title:  "Order Online - Denver 17th & Glenarm - Backcountry Delicatesse",
                                       body_class:  "page page-id-643 page-template page-template-page-home-php",
                                       locations: DB.all}
  end

  get '/customer_policies' do
    erb :customer_policies, locals:{page_name:  :customer_policies,
                                    title:  "Backcountry Policies - Backcountry Delicatessen",
                                    body_class:  "page page-id-436 page-template-default",
                                    locations: DB.all}
  end

  get '/order_fort_collins' do
    erb :order_fort_collins, locals:{page_name:  :order_fort_collins,
                                     title: "Order Online – Fort Collins - Backcountry Delicatessen",
                                     body_class:  "page page-id-530 page-child parent-pageid-131 page-template page-template-page-home-php",
                                     locations: DB.all}
  end

  get '/social' do
    erb :social, locals:{page_name: :social,
                         title: "Social Love - Backcountry Delicatessen",
                         body_class: "page page-id-207 page-template-default",
                         locations: DB.all}
  end

  get '/franchise' do
    erb :franchise, locals:{page_name: :franchise,
                            title:  "Franchise Info",
                            body_class:  "page page-id-7 page-template-default",
                            locations: DB.all}
  end

  get '/contact_us' do
    erb :contact_us, locals:{page_name: :contact_us,
                            title: "Contact Us - Backcountry Delicatessen",
                            body_class: "page page-id-8 page-template-default",
                            locations: DB.all}
  end

  get '/specialty_sandwiches' do
    erb :specialty_sandwiches, locals:{page_name: :specialty_sandwiches,
                                       title: "Specialty Sandwiches",
                                       body_class:  "page page-id-9 page-parent page-template-default",
                                       locations: DB.all}
  end

  get '/hot_breakfast_sandwiches' do
    erb :hot_breakfast_sandwiches, locals:{page_name: :breakfast,
                                           title: "Hot Breakfast Sandwiches",
                                           body_class: "page page-id-51 page-child parent-pageid-9 page-template page-template-page-menu-php",
                                           locations: DB.all}
  end

  get '/build_your_own' do
    erb :build_your_own, locals:{page_name: :build_your_own,
                                 title: "Build Your Own Sandwich - Backcountry Delicatessen",
                                 body_class: "page page-id-49 page-child parent-pageid-9 page-template page-template-page-menu-php",
                                 locations: DB.all}
  end

  get '/salads_soups_sides_drinks' do
    erb :salads_soups_sides_drinks, locals:{page_name:  :salads_soups_sides_drinks,
                                            title: "Salads, Soups, Sides, Drinks - Backcountry Delicatessen",
                                            body_class:  "page page-id-47 page-child parent-pageid-9 page-template page-template-page-menu-php",
                                            locations: DB.all}
  end

  get '/catering_menu' do
    erb :catering_menu, locals:{page_name: :catering_menu,
                                title: "Catering Menu - Backcountry Delicatessen",
                                body_class: "page page-id-299 page-child parent-pageid-9 page-template page-template-page-menu-php",
                                locations: DB.all}
  end

  get '/location_:location_slug' do
    location = DB.find_by_slug(params[:location_slug])
    erb :location_view, locals:{title:  "#{location.name} - Backcountry Delicatessen",
                                body_class:  "page page-child page-template page-template-page-location-php",
                                locations: DB.all,
                                location: location
                                }

  end

  get '/order_wazee_denver' do
    erb :order_wazee_denver, locals:{page_name: :order,
                                     title: "Order Online – Denver - Backcountry Delicatessen",
                                     body_class: "page page-id-527 page-child parent-pageid-131 page-template page-template-page-home-php",
                                     locations: DB.all}
  end

  get '/admin' do
    protected!
    redirect '/admin/locations'
  end

  get '/admin/locations' do
    protected!
    erb :admin_locations, locals:{title:  "Admin Locations",
                                  body_class:  "page",
                                  locations: DB.all}
  end

  get '/admin/locations/:location_id/edit' do
    protected!
    erb :location_edit, locals:{title:  "Edit Location",
                                body_class:  "page",
                                locations: DB.all,
                                location: DB.find(params[:location_id])
                                }
  end

  put '/admin/locations/:location_id' do
    protected!
    id = params[:location_id]
    DB.update(id, params[:location])
    redirect '/admin/locations'
  end

  get '/admin/locations/new' do
    protected!
    erb :location_create, locals:{title:  "New Location",
                                body_class:  "page",
                                locations: DB.all
                                }
  end

  post '/admin/locations' do
    protected!
    DB.create(params[:location])
    redirect '/admin/locations'
  end


  delete '/admin/locations/:location_id' do
    protected!
    id = params[:location_id]
    DB.delete(id)
    redirect '/admin/locations'
  end

  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted area"'
    halt 401, "Halt:\n Not authorized\n"
  end

  def authorized?
    @auth ||= Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? && @auth.basic? &&
    @auth.credentials && @auth.credentials == ['backcountry', 'deli']
  end
end
