class SeasonService
  def which?
    ['halloween', 'turkey day', 'christmas', 'easter', 'none'][rand(5)]
  end
end