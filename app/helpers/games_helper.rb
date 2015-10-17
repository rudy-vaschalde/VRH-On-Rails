module GamesHelper
  def big_vs
    content_tag :div, "VS", class: "big-vs"
  end

  def format_score(game)
    "#{game.home_team.score(game)} - #{game.visitor_team.score(game)}"
  end
end
