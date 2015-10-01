class Game < ActiveRecord::Base
  belongs_to :home_team, class_name: 'Team', required: true
  belongs_to :visitor_team, class_name: 'Team', required: true
  has_many :goals

  def home_goals
    self.goals.where(team: self.home_team)
  end

  def visitor_goals
    self.goals.where(team: self.visitor_team)
  end

end
