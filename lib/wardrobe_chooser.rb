require 'weather_service'

class WardrobeChooser



  attr_accessor :weather_service

  def initialize
    @weather_service = WeatherService.new
  end

  def shoes_when_warm
    @weather_service.warm? && @weather_service.current_temperature > 75
  end

  def outfit_when_warm
    @weather_service.warm? && @weather_service.current_temperature > 75
  end

  def outfit_when_cold
    @weather_service.cold? && @weather_service.current_temperature < 55
  end

  def shoes_when_cold
    @weather_service.cold? && @weather_service.current_temperature > 55
  end

  def shoes_for_rain
    @weather_service.raining?
  end

  def outfit_for_rain
    @weather_service.raining?
  end

  def shoes_for_snow
    @weather_service.snowing? && @weather_service.current_temperature < 32
  end
  def outfit_for_snow
    @weather_service.snowing? && @weather_service.current_temperature < 32
  end



end