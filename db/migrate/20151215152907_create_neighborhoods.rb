class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.string :state
      t.string :city
      t.integer :zip
      t.string :img_url
    end
  end
end
