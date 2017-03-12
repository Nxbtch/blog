class CreateAdminAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_assets do |t|
      t.string :path
      t.string :name

      t.timestamps
    end
  end
end
