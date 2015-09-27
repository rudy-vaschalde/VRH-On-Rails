class Team < ActiveRecord::Base
  has_many :seasons, through: :rank
  has_many :players

  validates :name, :city, presence: true
end
