class Goal < ActiveRecord::Base
  belongs_to :game, required: true
  belongs_to :team, required: true
  belongs_to :scorer, class_name: 'Player'
  belongs_to :passer, class_name: 'Player'

  validate :belongs_to_team, on: :create
  validate :scorer_and_passer_are_different

  scope :score, -> {count}

  private
    # If the player is set for a goal, check that he belongs to the given team!
    # Only on creation, because he can change team in the future
    def belongs_to_team
      errors.add(:scorer_id, "ne fait pas parti de l'équipe") unless self.scorer.nil? || self.scorer.team == self.team
      errors.add(:passer_id, "ne fait pas parti de l'équipe") unless self.passer.nil? || self.passer.team == self.team
    end

    # The scorer and the passer of a goal cannot be the same
    def scorer_and_passer_are_different
      errors.add(:passer_id, "ne peut pas être identique au buteur") if scorer && passer && scorer == passer
    end
end
