require_relative 'location'

class LocationStore
  def initialize(database)
    @database ||= Sequel.connect(database)
    @database
  end

  def all
    @database[:locations].map do |data|
      Location.new(data)
    end
  end
end
