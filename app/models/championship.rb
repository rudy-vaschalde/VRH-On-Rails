class Championship < ActiveRecord::Base
  has_many :seasons

  validates :name, presence: true, uniqueness: true
end
