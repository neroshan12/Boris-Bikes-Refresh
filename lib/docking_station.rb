require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
#    bike # we need to return the bike we dock
    @bike = bike
  end

#  def bike
#    @bike   # returns the bike we docked
#  end
end
