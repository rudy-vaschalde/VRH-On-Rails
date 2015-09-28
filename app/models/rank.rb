class Rank < ActiveRecord::Base
  belongs_to :season
  belongs_to :team

  before_create :set_defaults
  #validates :team_id, :season_id, presence: true

  private
    def set_defaults
      win = 0
      loss = 0
      win_ot = 0
      loss_ot = 0
      tie = 0
      return true
    end

end

