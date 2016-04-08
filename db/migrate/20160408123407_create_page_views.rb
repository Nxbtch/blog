class CreatePageViews < ActiveRecord::Migration[5.0]
  def change
    create_table :page_views do |t|
      t.string :ip
      t.string :user_agent
      t.string :path

      t.timestamps
    end
  end
end
