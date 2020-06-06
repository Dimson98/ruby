class Route
  attr_reader :stations
  def initialize(start, finish)
    @stations = [start,finish]
  end
  def add_station(station)
      @stations.insert(-2,station)
  end
  def del_station(station)
     @stations.delete(station) if (@stations.include?(station)) && (station != @stations.first) && (station != @stations.last)
  end

end
