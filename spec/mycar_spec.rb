RSpec.describe Car::MyCar do
  let(:volvo) { Car::MyCar.new(2020, 'volvo', 'black') }

  it 'creates instance of MyCar class' do
    expect(volvo).to be_instance_of(Car::MyCar)
  end

  it 'the car speed is 0' do
    expect(volvo.car_speed).to eq(0)
  end

  it 'speed up by default' do
    volvo.speed_up
    expect(volvo.car_speed).to eq(Car::MyCar::SPEED_OFFSET)
  end

  it 'speed even up' do
    volvo.speed_up(60)
    expect(volvo.car_speed).to be > 59
  end

  it 'slows down' do
    volvo.slow_down
    expect(volvo.car_speed).to eq(-Car::MyCar::SPEED_OFFSET)
  end

  it 'slows down from some speed' do
    volvo.speed_up
    volvo.slow_down(10)
    expect(volvo.car_speed).to be(0)
  end

  it 'changes the color of the car' do
    volvo.spray_paint :yellow
    expect(volvo.color).to eq(:yellow)
  end

  it 'has no defects' do
    expect(volvo.defects).to be_empty
  end

  it "add_defects" do
    volvo.add_defect('water pump failure')
    expect(volvo.defects).to include('water pump failure')
  end

  it 'list all the defects' do
    volvo.add_defect('water pump failure')
    volvo.add_defect('oil leak')
    expect(volvo.service_info).to eq('Detected defects: water pump failure, oil leak')
  end
end
