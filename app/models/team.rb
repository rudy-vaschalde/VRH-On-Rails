class Team < ActiveRecord::Base
  has_many :seasons, through: :rank
  has_many :players
  has_many :goals

  belongs_to :championship
  validates :name, :city, presence: true

  def all_games
    Game.where('visitor_team_id = ? or home_team_id = ?', self.id, self.id)
  end

  def self.n2
    Team.find_by(championship: Championship.n2, city: "Voreppe")
  end

  def self.n4
    Team.find_by(championship: Championship.n4, city: "Voreppe")
  end

end
