class CreateDoses < ActiveRecord::Migration[5.0]
  def change
    create_table :doses do |t|
      t.string :amount
      t.text :description
      t.references :ingredients
      t.references :cocktails

      t.timestamps
    end
  end
end
