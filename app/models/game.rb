class Game < ActiveRecord::Base

  belongs_to :home_team, class_name: 'Team', required: true
  belongs_to :visitor_team, class_name: 'Team', required: true

  has_many :goals

  def home_goals
    @home_goals = self.goals.where(team: self.home_team)
  end

  def home_score
    @home_goals.count
  end

  def visitor_goals
    @visitor_goals = self.goals.where(team: self.visitor_team)
  end

  def visitor_score
    @visitor_goals.count
  end

end
