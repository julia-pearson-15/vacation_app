class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :img_url
      t.string :address
      t.string :price_per_night
      t.string :description
      t.references :user_id
      t.references :neighborhood_id
    end
  end
end
