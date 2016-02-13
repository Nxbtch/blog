class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :post_author, default: 0
      t.datetime :post_date
      t.text :post_content, limit: 16.megabytes - 1
      t.text :post_title
      t.string :post_status, limit: 20, default: 'publish'
      t.string :comment_status, limit: 20, default: 'open'
      t.string :post_password, limit: 20
      t.string :post_name, limit: 200
      t.integer :post_parent, default: 0
      t.integer :comment_count
      t.timestamps null: false
    end
  end
end
