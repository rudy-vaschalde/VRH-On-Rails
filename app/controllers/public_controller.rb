class PublicController < ApplicationController

  def index
    @current_seasons = [Championship.n2.current_season, Championship.n4.current_season]
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
