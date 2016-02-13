class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id, default: 0
      t.string :comment_author
      t.string :comment_author_email
      t.string :comment_author_url
      t.string :comment_author_IP
      t.text :comment_content
      t.integer :comment_karma, default: 0
      t.boolean :comment_approved, default: true
      t.string :comment_agent
      t.string :comment_type, limit: 20
      t.integer :comment_parent
      t.timestamps null: false
    end
  end
end
