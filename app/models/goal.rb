class Goal < ActiveRecord::Base
  belongs_to :game

  belongs_to :scorer, class_name: Player
  belongs_to :passer, class_name: Player

  belongs_to :team, through: :scorer

end
