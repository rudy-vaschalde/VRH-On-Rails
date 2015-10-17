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

  def winner?(team)
    # TODO
  end

  def past?
    match_day < Time.now
  end

  # Add a goal for this game
  # +team+:: instance of a team
  # +scorer_id+:: id of a Player (optional)
  # +passer_id+:: id of a Player (optional)
  def score!(team, scorer_id = nil, passer_id = nil)
    new_goal = Goal.new(team: team, scorer_id: scorer_id, passer_id: passer_id)
    self.goals << new_goal
    return new_goal.valid?
  end

  # Class methods
  def self.next_n2
    Game.future.n2.first
  end

end
