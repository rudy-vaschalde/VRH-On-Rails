class PublicController < ApplicationController

  def index
    if Championship.n2.nil? || Championship.n4.nil?
        @current_seasons = [nil, nil]
    else
      @current_seasons = [Championship.n2.current_season, Championship.n4.current_season]
    end
    @articles = Article.featured
    @next_match = Game.next_n2
  end

  def about
  end

  def nat2
  end

  def nat4
  end

  def contact
  end
end
