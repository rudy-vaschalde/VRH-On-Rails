class PublicController < ApplicationController
  # APPLICATION ROOT
  # GET /public/index
  def index
    if Championship.n2.nil? || Championship.n4.nil?
        @current_seasons = []
    else
      @current_seasons = [Championship.n2.current_season, Championship.n4.current_season].compact
    end
    @articles = Article.featured
    @next_match = Game.next_n2
  end

  # GET /public/about
  def about
  end

  # GET /public/contact
  def contact
  end
end
