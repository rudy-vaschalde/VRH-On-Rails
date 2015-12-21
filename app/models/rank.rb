class Rank < ActiveRecord::Base
  include Decorable

  belongs_to :season, required: true
  belongs_to :team, required: true
end
