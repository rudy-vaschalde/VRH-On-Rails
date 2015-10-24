module GamesHelper
  def big_vs
    content_tag :div, "VS", class: "big-vs"
  end

  def format_score(game)
    "#{game.home_team.score(game)} - #{game.visitor_team.score(game)}"
  end

  def game_status(game, team)
    if game.past?
      game.winner?(team) ? 'win' : 'lose'
    end
  end

end
