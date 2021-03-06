class Location
  attr_reader :id, :name, :hours1, :hours2, :area, :address, :city_state_zip, :phone_number, :twitter_link, :slug, :description, :map_url

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @hours1 = data[:hours1]
    @hours2 = data[:hours2]
    @area = data[:area]
    @address = data[:address]
    @city_state_zip = data[:city_state_zip]
    @phone_number = data[:phone_number]
    @twitter_link = data[:twitter_link]
    @slug = data[:slug]
    @description = data[:description]
    @map_url = data[:map_url]
  end


end
