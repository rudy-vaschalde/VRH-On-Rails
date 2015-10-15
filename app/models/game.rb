class Game < ActiveRecord::Base
  belongs_to :home_team, class_name: 'Team', required: true
  belongs_to :visitor_team, class_name: 'Team', required: true
  has_many :goals

  scope :future, -> { where("match_day >= ?", Time.now).order(match_day: :desc) }
  scope :n2, -> { where('visitor_team_id = ? or home_team_id = ?', Team.n2.id, Team.n2.id)}
  scope :n4, -> { where('visitor_team_id = ? or home_team_id = ?', Team.n4.id, Team.n4.id)}
  scope :vrh, -> { where('visitor_team_id IN (?) or home_team_id IN (?)', Team.vrh.collect(&:id), Team.vrh.collect(&:id))}

  # Instance methods
  def home_goals
    self.home_team.goals
  end

  def visitor_goals
    self.visitor_team.goals
  end

  # Add a goal for this game
  # +side+:: symbol that specify :visitor or :home
  # +scorer+:: instance of a Player (optional)
  # +passer+:: instance of a Player (optional)
  def score(side, scorer = nil, passer = nil)
    team = :home ? self.home_team : self.visitor_team
    self.goals << Goal.new(team: team, scorer: scorer, passer: passer)
  end

  # Class methods
  def self.next_n2
    Game.future.n2.first
  end

end
