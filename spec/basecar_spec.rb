require 'BaseCar'

describe 'BaseCar' do

  describe 'attributes' do
    it "allows reading and writing for :current_speed" do
      car = BaseCar.new
      car.current_speed = 2
      expect(car.current_speed).to eq(2)
    end

    it "allows reading and writing for :max_speed" do
      car = BaseCar.new
      car.max_speed = 200
      expect(car.max_speed).to eq(200)
    end

    it "allows reading and writing for :current_speed" do
      car = BaseCar.new
      car.brand = 'Chevy'
      expect(car.brand).to eq('Chevy')
    end
  end

  describe '#accelerate' do

    it "accelerates and reaches :current_speed to :max_speed" do
      car = BaseCar.new(current_speed: 1, max_speed: 200)
      car.accelerate
      expect(@current_speed).to eq(@max_speed)
    end
  end

end
