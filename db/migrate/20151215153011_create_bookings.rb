class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :in_date
      t.datetime :out_date
      t.references :user
      t.references :listing
      t.references :owner

      t.timestamps null: false
    end
  end
end
