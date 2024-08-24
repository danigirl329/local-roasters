class CreateLocations < ActiveRecord::Migration[7.2]
  def change
    create_table :locations do |t|
      t.references :roaster, null: false, foreign_key: true
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
