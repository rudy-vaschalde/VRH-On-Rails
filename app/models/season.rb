class Season < ActiveRecord::Base
  belongs_to :championship
  has_many :ranks
  has_many :teams, through: :ranks

  validates :name, presence: true
  validates_format_of :name, with: /[0-9]{4} \- [0-9]{4}/

end
