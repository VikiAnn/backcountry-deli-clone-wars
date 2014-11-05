require_relative 'location'

class LocationStore
  attr_reader :database
  def initialize(database)
    @database ||= Sequel.connect(database)
    @database
  end

  def all
    @database[:locations].map do |data|
      Location.new(data)
    end
  end

  def find(id)
    raw_location = @database[:locations].where(:id => id).first
    location = Location.new(raw_location)
  end

  # Work in progress
  # def update
  #   @database[:locations]
  # end
end
