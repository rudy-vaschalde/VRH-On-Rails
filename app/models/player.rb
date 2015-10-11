class Player < ActiveRecord::Base
  belongs_to :team, required: true

  has_many :goals, inverse_of: :scorer
  has_many :assists, class_name: "Goal", inverse_of: :passer

  has_attached_file :photo, styles: { medium: "400x400", thumb: "200x200>" }, default_url: "/images/missing-avatar.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

end
