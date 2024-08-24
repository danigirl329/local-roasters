class CreateCoffeeTags < ActiveRecord::Migration[7.2]
  def change
    create_table :coffee_tags do |t|
      t.references :coffee, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
