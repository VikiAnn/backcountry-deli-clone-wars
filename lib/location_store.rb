require_relative 'location'

class LocationStore
  attr_reader :database
  def initialize(database)
    @database ||= Sequel.connect(database)
    @database
  end

  def all
    @database[:locations].order(:id).map do |data|
      Location.new(data)
    end
  end

  def find(id)
    raw_location = @database[:locations].where(:id => id).first
    location = Location.new(raw_location)
  end

  # Work in progress
  def update(id, data)
    data = data.inject({}){|memo, (k,v)| memo[k.to_sym] = v; memo}
    location = @database.from(:locations).where(:id => id).update(data)
  end

  def delete(id)
    @database.from(:locations).where(:id => id).delete
  end
end
