class TeamDecorator < Draper::Decorator
  delegate_all

  def full_name
    "#{name} #{city}"
  end

end
