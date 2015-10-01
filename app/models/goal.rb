class Goal < ActiveRecord::Base
  belongs_to :game, required: true
  belongs_to :scorer, class_name: 'Player'
  belongs_to :passer, class_name: 'Player'
  belongs_to :team, required: true

  validate :belongs_to_team, on: :create

  scope :score, -> {count}

  private
    # If the player is set for a goal, check that he belongs to the given team!
    # Only on creation, because he can change team in the future
    def belongs_to_team
      errors.add(:scorer_id, "ne fait pas parti de l'équipe") unless self.scorer.nil? || self.scorer.team == self.team
      errors.add(:passer_id, "ne fait pas parti de l'équipe") unless self.passer.nil? || self.passer.team == self.team
    end
end
