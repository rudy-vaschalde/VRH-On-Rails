class Season < ActiveRecord::Base
  belongs_to :championship
  has_many :teams, through: :rank

end
