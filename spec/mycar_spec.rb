RSpec.describe Car::MyCar do
  it 'creates instance of MyCar class' do
    volvo = Car::MyCar.new(2020, 'volvo', 'black')
    expect(volvo).to be_instance_of(Car::MyCar)
  end

  it 'the car speed is 0' do
    volvo = Car::MyCar.new(2020, 'volvo', 'black')
    expect(volvo.car_speed).to eq(0)
  end

  it 'speed up by default' do
    volvo = Car::MyCar.new(2020, 'volvo', 'black')
    volvo.speed_up
    expect(volvo.car_speed).to eq(Car::MyCar::SPEED_OFFSET)
  end

  it 'speed even up' do
    volvo = Car::MyCar.new(2020, 'volvo', 'black')
    volvo.speed_up(60)
    expect(volvo.car_speed).to be > 59
  end

  it 'slows down' do
    volvo = Car::MyCar.new(2020, 'volvo', 'black')
    volvo.slow_down
    expect(volvo.car_speed).to eq(-Car::MyCar::SPEED_OFFSET)
  end

  it 'slows down from some speed' do
    volvo = Car::MyCar.new(2020, 'volvo', 'black')
    volvo.speed_up
    volvo.slow_down(10)
    expect(volvo.car_speed).to be(0)
  end
end
