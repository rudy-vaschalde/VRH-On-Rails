class Goal < ActiveRecord::Base
  belongs_to :game, required: true

  belongs_to :scorer, class_name: 'Player'
  belongs_to :passer, class_name: 'Player'

  belongs_to :team, required: true

end
