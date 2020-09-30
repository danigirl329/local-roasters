class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.references :roaster
      t.timestamps
    end
  end
end
