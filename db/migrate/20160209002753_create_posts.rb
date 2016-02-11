class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :url
      t.float :latitude
      t.float :longitude
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
