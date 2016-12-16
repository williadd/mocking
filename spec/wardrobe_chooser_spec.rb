require 'wardrobe_chooser'
require 'weather_service'

describe 'outfit chooser' do
  it 'knows to wear sandals when it is above 75 degrees' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockWarmShoes.new
    expect(wardrobe_chooser.shoes_when_warm).to eq true
  end

  it 'knows to wear warm shoes when it is cold' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockColdShoes.new
    expect(wardrobe_chooser.shoes_when_cold).to eq true
  end

  it 'knows to wear rain boots when it rains' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockRainyShoes.new
    expect(wardrobe_chooser.shoes_for_rain).to eq true
  end
  it 'knows to carry an umbrella when it rains' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockRainGear.new
    expect(wardrobe_chooser.outfit_for_rain).to eq true
  end

  it 'knows to wear a coat when it is snowing' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockSnowGear.new
    expect(wardrobe_chooser.outfit_for_snow).to eq true
  end

  it 'knows to wear shorts when it is above 70 degrees' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockWarmPants.new
    expect(wardrobe_chooser.outfit_when_warm).to eq true
  end

  it 'knows to wear a light jacket when it is colder than 65 degrees' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockColdGear.new
    expect(wardrobe_chooser.outfit_when_cold).to eq true
  end
end







class MockWarmShoes
  def warm?
    true
  end
  def current_temperature
    70
  end

end

class MockColdShoes
  def cold?
    true
  end
end
def current_temperature
  70
end

class MockRainyShoes
  def raining?
    true
  end
end

class MockRainGear
  def snowing?
    true
  end
  def current_temperature
    40
  end
end

class MockSnowGear
  def snowing?
    true
  end
end



class MockWarmPants
  def warm?
    true
  end
  def current_temperature
    70
  end
end
class MockColdGear
  def cold?
    true
  end
end
def current_temperature
  55
end
