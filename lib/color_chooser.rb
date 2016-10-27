require 'season_service'

class ColorChooser

  COLORS = {
      'halloween' => 'orange',
      'turkey day' => 'brown',
      'christmas' => 'red',
      'easter' => 'blue',
      'none' => 'white'
  }

  attr_accessor :season_service

  def initialize
    @season_service = SeasonService.new
  end

  def color_for_today
    COLORS[@season_service.which?]
  end
end