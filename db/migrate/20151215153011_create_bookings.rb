class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :in_date
      t.datetime :out_date
      t.references :user_id
      t.references :listing_id
      t.references :owner_id

      t.timestamps null: false
    end
  end
end
