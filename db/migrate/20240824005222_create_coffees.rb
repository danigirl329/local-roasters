class CreateCoffees < ActiveRecord::Migration[7.2]
  def change
    create_table :coffees do |t|
      t.string :name
      t.references :roaster, null: false, foreign_key: true
      t.string :origin
      t.string :roast_level
      t.text :flavor_notes
      t.decimal :price

      t.timestamps
    end
  end
end
