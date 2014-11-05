class Location
  attr_reader :name, :hours1, :hours2, :area, :address, :city_state_zip, :phone
  def initialize(data)
    @name = data[:name]
    @hours1 = data[:hours1]
    @hours2 = data[:hours2]
    @area = data[:area]
    @address = data[:address]
    @city_state_zip = data[:city_state_zip]
    @phone = data[:phone]
  end
end
