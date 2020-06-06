class Station
  attr_reader :trains
  def initialize(name)
    @name = name
    @trains = []
  end
#   приём поезда
  def park_train(train)
    @trains.push(train)
#   @trains << train   -  более красиво ?
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
  def show_trains_by_type
    count = 0
    @trains.each { |train| count += 1 if train.type == "п"}
    puts count
  end
end
