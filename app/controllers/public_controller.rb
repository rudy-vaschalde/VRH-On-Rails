class PublicController < ApplicationController
  skip_before_filter :authenticate_user!

  def index
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
