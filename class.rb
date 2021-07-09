class Car

  def initialize(car_name, car_model, capacity)　#initializeメソッドの定義（car_name、car_model、capacityの３つを、fire_truckのインスタンスを生成する際に引数として渡している。）
    @name = car_name
    @model = car_model
    @capacity = capacity
  end

  def self.run  #クラスメソッドの定義
    puts '走行します'
  end

  def ride_car(ride_number)　#インスタンスメソッドの定義
    @ride_number = ride_number  #@でインスタンス変数を定義
    if ride_number > @capacity
      puts "#{@name}は、乗車定員が#{@capacity}人なので、#{@ride_number}人は乗れません。"
    else
      puts "#{@ride_number}人乗車できました。"
    end
  end
  
end

fire_truck = Car.new('消防車', '大型車', 5)  # Carクラスのインスタンスを生成
fire_truck.ride_car(3)  #インスタンスメソッドの呼び出し

Car.run  #クラスメソッドの呼び出し