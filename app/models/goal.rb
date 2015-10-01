class Goal < ActiveRecord::Base
  belongs_to :game

  belongs_to :scorer, class_name: "Player"
  has_many :assists
  has_many :passers, class_name: "Player", through: :assists

  belongs_to :team, through: :scorer

  validate :belongs_to_team, on: :create
 

  private

  # If the player is set for a goal, check that he belongs to the given team!
  # Only on creation, because he can change team in the future
  def belongs_to_team
    errors.add(:player_id, "ne fait pas parti de l'équipe") unless self.player.nil? || self.player.team == self.team
  end

end
