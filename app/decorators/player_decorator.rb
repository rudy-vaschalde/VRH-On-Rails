class PlayerDecorator < Draper::Decorator
  delegate_all

  def full_name
    "#{first_name} #{last_name}"
  end

  def position_small
    position[0,3].upcase
  end
end
