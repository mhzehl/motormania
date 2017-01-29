class CreateMotorcycles < ActiveRecord::Migration[5.0]
  def change
    create_table :motorcycles do |t|
      t.string :type
      t.string :category
      t.integer :production_since
      t.string :photo
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
