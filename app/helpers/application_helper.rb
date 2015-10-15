module ApplicationHelper
  # Returns a french format of a date
  # ie 18/10/2015 à 15h
  def format_date(date)
    date.strftime("%d/%m/%y à %Hh")
  end

end
