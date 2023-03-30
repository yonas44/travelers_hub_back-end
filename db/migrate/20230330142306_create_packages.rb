class CreatePackages < ActiveRecord::Migration[7.0]
  def change
    create_table :packages do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :destination
      t.boolean :flight
      t.decimal :price
      t.boolean :bus
      t.string :accomodation
      t.integer :promotion

      t.timestamps
    end
  end
end
