class Goal < ActiveRecord::Base
  belongs_to :game

  belongs_to :scorer, class_name: Player
  has_many :assist
  has_many :passers, class_name: Player, through: :assist

  belongs_to :team, through: :scorer

end
