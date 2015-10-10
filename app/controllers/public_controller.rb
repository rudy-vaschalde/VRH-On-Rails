class PublicController < ApplicationController
  skip_before_filter :authenticate_user!

  def index
    @current_seasons = [Season.current_season(Championship.n2), Season.current_season(Championship.n4)]
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
