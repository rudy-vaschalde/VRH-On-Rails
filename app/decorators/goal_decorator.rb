class GoalDecorator < Draper::Decorator
  delegate_all

  decorates_association :game
  decorates_association :team
  decorates_association :scorer
  decorates_association :passer

end
