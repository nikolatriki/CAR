RSpec.describe Car::MyCar do
  it 'creates instance of MyCar class' do
    volvo = Car::MyCar.new(2020, 'volvo', 'black')
    expect(volvo).to be_instance_of(Car::MyCar)
  end

  it 'the car speed is 0' do
    volvo = Car::MyCar.new(2020, 'volvo', 'black')
    expect(volvo.car_speed).to eq(0)
  end

  it 'speed up' do
    volvo = Car::MyCar.new(2020, 'volvo', 'black')
    expect(volvo.speed_up(10)).to be.positive?
  end
end
