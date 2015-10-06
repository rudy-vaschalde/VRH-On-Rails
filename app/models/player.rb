class Player < ActiveRecord::Base
  belongs_to :team, required: true

  has_many :goals, inverse_of: :scorer
  has_many :assists, class_name: "Goal", inverse_of: :passer

end
