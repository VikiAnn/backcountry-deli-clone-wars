class LocationStore

  def initialize(database)
    @database ||= Sequel.connect(database)
    @database[:locations]
  end

  def all
    @database.all
  end
end
