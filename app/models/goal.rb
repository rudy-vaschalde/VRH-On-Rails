class Goal < ActiveRecord::Base
  belongs_to :game

  belongs_to :scorer, class_name: "Player"
  has_many :assists
  has_many :passers, class_name: "Player", through: :assists

  belongs_to :team, through: :scorer

end
