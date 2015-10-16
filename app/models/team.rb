class Team < ActiveRecord::Base
  has_many :seasons, through: :rank
  has_many :players
  has_many :goals
  belongs_to :championship

  validates :name, :city, presence: true

  has_attached_file :logo, styles: { medium: "400x400", thumb: "50x50>" }, default_url: "/img/missing_logo_:style.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

  has_attached_file :team_photo, styles: { large: "2048x1365<", medium: "512x341>" }, default_url: "/img/missing_team.png"
  validates_attachment_content_type :team_photo, content_type: /\Aimage\/.*\Z/

  scope :vrh, -> { where(city: "Voreppe") }

  def all_games
    Game.where('visitor_team_id = ? or home_team_id = ?', self.id, self.id)
  end

  def self.n2
    @n2 ||= Team.find_by(championship: Championship.n2, city: "Voreppe")
  end

  def self.n4
    @n4 ||= Team.find_by(championship: Championship.n4, city: "Voreppe")
  end

  def score(game)
    self.goals.where(game: game).score
  end

end
