class Team < ActiveRecord::Base
  has_many :seasons, through: :rank
  has_many :players
  has_many :goals

  validates :name, :city, presence: true

  def all_games
    Game.where('visitor_team_id = ? or home_team_id = ?', self.id, self.id)
  end
end
