class Train
  attr_accessor :current_speed, :route
  attr_reader :qty


  def initialize(train_id, train_type = "пассажирский", qty_of_wagons)
    @id = train_id
    @type = train_type
    @qty = qty_of_wagons
    @current_speed = 0
    @route = []
    @current_station = @route[0]
    @current_position = ""
    @current_index = 0
  end

  def speed_up(new_speed)
    @current_speed = @current_speed + new_speed
  end

  def speed_down(new_speed)
    @current_speed = @current_speed - new_speed
    if @current_speed < 0
      @current_speed = 0
    end
  end

  def inc_qty_of_wagons
    if @current_speed == 0
      @qty += 1
    end
  end

  def get_route(route)
    @route << route
  end

  def dec_qty_of_wagons
    if @current_speed == 0
      @qty -= 1
    end
  end

  def get_current_station
    @current_station = @route[@current_index]
  end

  def get_next_station
    @current_index += 1
    @current_station = @route[@current_index]
  end

  def get_previous_station
    @current_index -= 1
    @current_station = @route[@current_index]
  end

  def current_position
    @current_position
  end

  def move_to_next_station
    @current_position = @route[@current_index+1]
  end

  def move_to_previous_station(station)
    @current_position = @route[@current_index-1]
  end

end

class Route
  def initialize(start,finish)
    @route = [start,finish]
  end
  def add_station(station_name)
      @route.insert(1,station_name)
  end
  def del_station(station_name)
     @route.delete(station_name)
  end
  def stations
      puts @route
  end
end

class Station
  def initialize(name)
    @name = name
    @trains = []
  end
  def park_train
    @trains.push = train_id
  end
  def let_out_train(train_id)
    @trains.delete(train_id)
  end
  def trains
    puts @trains
  end
end
