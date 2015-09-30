class Player < ActiveRecord::Base
  belongs_to :team

  has_many :goals, inverse_of: :scorer
  has_many :assist

end
