class Rank < ActiveRecord::Base
  belongs_to :season, required: true
  belongs_to :team, required: true

  def game_count
    @game_count ||= self.win+self.loss+self.tie+self.win_ot+self.loss_ot
  end

  def points
    @points ||= self.win*3+self.tie+self.win_ot*2+self.loss_ot
  end

end

