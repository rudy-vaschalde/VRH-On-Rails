module ApplicationHelper
  # Returns a french format of a date
  # ie 18/10/2015 à 15h
  def format_date(date)
    date.strftime("%d/%m/%y à %Hh")
  end

  def link_to_glyph(label, path, glyph, options = {})
    label = label.nil? ? "" : " #{label}"
    link_to(path, options) do
      (content_tag(:i, "", class: "glyphicon glyphicon-#{glyph.to_s.gsub('_','-')}") + " " + (content_tag :span, label, class: "link-content")).html_safe
    end
  end

end
