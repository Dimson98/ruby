#

class Train
  attr_accessor :current_speed  #,  :route   # родит переменную @route, методы get & set, но нет значения пока. Можно оставить set_route_
  attr_reader :qty # теперь не нужно описывать get-метод train.qty
  attr_reader :type
  attr_reader :current_station
  attr_reader :route  # - это атрибут трамвая


  def initialize(train_id, train_type, wagons)
    @id = train_id
    @type = train_type
    @qty = wagons
    @current_speed = 0

  end

  def speed_up(new_speed)
    @current_speed += new_speed
  end

  def speed_down(new_speed)
    @current_speed -= new_speed
    @current_speed = 0 if @current_speed < 0
  end

  def inc_qty_of_wagons
    @qty += 1 if @current_speed.zero?
  end

  def dec_qty_of_wagons

    @qty -= 1 if (@current_speed.zero?) && (@qty.positive?)
  end

  def set_route(route)
    @route = route
    @current_station = @route.stations.first   # достаю для того, чтобы туда поставить поезд
    @current_station.park_train(self)
    @route_position = 0
  end

  def get_next_point
    @route.stations[@route_position + 1]
  end

  def get_previous_point
    @route.stations[@route_position - 1] if @route_position > 0
  end

  def move_to_next_station
    @current_station.let_out_train(self)
    @next_station = @route.stations[@route_position + 1]
    @next_station.park_train(self)
    @route_position += 1
  end

  def move_to_previous_station(station)
    @current_station.let_out_train(self)
    @next_station = @route.stations[@route_position - 1]
    @next_station.park_train(self)
    @route_position -= 1
  end



end
