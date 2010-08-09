class CreatePosts < ActiveRecord::Migration

  def self.up
    create_table :posts do |t|
      t.string :title,     :null => false
      t.string :permalink, :null => false, :unique => true
      t.text   :content,   :null => false
      t.string :author
      t.timestamps
    end
    add_index :posts, :permalink
  end

  def self.down
    drop_table :posts
  end

end