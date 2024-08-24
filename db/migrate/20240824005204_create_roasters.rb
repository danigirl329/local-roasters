class CreateRoasters < ActiveRecord::Migration[7.2]
  def change
    create_table :roasters do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :website
      t.decimal :rating

      t.timestamps
    end
  end
end
