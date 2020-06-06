#

class Train
  attr_accessor :current_speed  #,  :route   # родит переменную @route, методы get & set, но нет значения пока. Можно оставить set_route_
  attr_reader :qty # теперь не нужно описывать get-метод train.qty
  attr_reader :type
  attr_reader :current_position
  # attr_reader :route  - это не атрибут трамвая


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

  # def get_route
  #  @route
  # end

  def set_route(route)
    @route = route
    @current_station = @route.stations.first
    @current_station.park_train(self)
  end

# find next/previous в пристёгнутом объекте route

  def get_current_point
    @current_station = @route[@current_index]
  end

  def get_next_point
  @current_station = @route[@current_index + 1]
  end

  def get_previous_point
  @current_station = @route[@current_index - 1]
  end

  def move_to_next_station
    @current_position = @route[@current_index+1]
    @current_station.let_out_train(self)
    @current_station.park_train(self)
  end

  def move_to_previous_station(station)
    @current_position = @route[@current_index-1]
    @current_station.let_out_train(self)
    @current_station.park_train(self)
  end



  # def current_position
  #   @current_position
  # end



end
