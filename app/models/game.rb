class Game < ActiveRecord::Base
  belongs_to :home_team, class_name: 'Team', required: true
  belongs_to :visitor_team, class_name: 'Team', required: true
  has_many :goals

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

end
