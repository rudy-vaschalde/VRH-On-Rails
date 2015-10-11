class AddAttachmentArticleImageToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :article_image
    end
  end

  def self.down
    remove_attachment :articles, :article_image
  end
end
