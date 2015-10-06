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

end
