class AddOriginToPosts < ActiveRecord::Migration[5.0]
  def change
    change_table :posts do |t|
      t.string :origin
    end
  end
end
