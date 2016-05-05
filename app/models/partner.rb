class Partner < ActiveRecord::Base
  include Decorable

  has_attached_file :logo, styles: { medium: "200x150" }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/


  scope :featured, -> { order(created_at: :asc).first(4) }

end
