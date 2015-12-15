class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.string :state
      t.string :city
      t.integer :zip
    end
  end
end
