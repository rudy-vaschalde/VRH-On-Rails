class Team < ActiveRecord::Base
  has_many :seasons, through: :rank
  has_many :players

  has_many :games

  validates :name, :city, presence: true
end
