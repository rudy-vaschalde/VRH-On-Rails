class RankDecorator < Draper::Decorator
  delegate_all

  def game_count
    @game_count ||= win + loss + tie + win_ot + loss_ot
  end

  def points
    @points ||= win*3 + tie + win_ot*2 + loss_ot
  end
end
