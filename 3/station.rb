class Station
  attr_reader :trains
  attr_reader :name

  def initialize(name)
    @name = name
    @trains = []
  end

#   приём поезда
  def park_train(train)
#   @trains.push(train)  -  работает
    @trains << train
  end

#   отправление поезда
  def let_out_train(train)
    @trains.delete(train) if @trains.include?(train)
  end

#   возвращает список поездов
  # def show_trains
  #  @trains
  # end

#   возвращает список (количество) поездов по типу
  def show_trains_by_type(type)
    count = 0
    @trains.each { |train| count += 1 if train.type == type}
    puts "Тип #{type}: Поездов - #{count} "
  end
end
