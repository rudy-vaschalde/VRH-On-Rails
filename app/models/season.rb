class Season < ActiveRecord::Base
  belongs_to :championship
  has_many :ranks
  has_many :teams, through: :ranks

end
