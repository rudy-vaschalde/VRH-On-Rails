class Season < ActiveRecord::Base
  belongs_to :championship, required: true
  has_many :ranks
  has_many :teams, through: :ranks

  validates :name, presence: true
  validates_format_of :name, with: /[0-9]{4} \- [0-9]{4}/

  def ordered_ranks
    ranks.sort{ |a,b| a.points <=> b.points }.reverse
  end

  def self.current_season(championship)
    Season.where(championship: championship).order(:created_at).last
  end
end
