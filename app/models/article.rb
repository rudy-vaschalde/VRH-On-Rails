class Article < ActiveRecord::Base
  belongs_to :user, required: true

  has_attached_file :article_image, styles: { thumb: "360x240>" }, default_url: "/img/default_article.png"
  validates_attachment_content_type :article_image, content_type: /\Aimage\/.*\Z/

  validates :content, presence: true
  validates :title, presence: true

end
