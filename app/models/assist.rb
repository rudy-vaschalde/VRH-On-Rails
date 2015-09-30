class Assist < ActiveRecord::Base
  belongs_to :goal
  belongs_to :player
end
