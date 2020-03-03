RSpec.describe Car::MyCar do
    it "creates instanse of MyCar class" do
        volvo = Car::MyCar.new(2020, black, volvo)
        expect(volvo).to be_instanse_of(Car::MyCar)
    end

    it "the car speed is 0" do
        volvo = Car::MyCar.new(2020, black, volvo)
        expect(volvo.car_speed).
    end
end