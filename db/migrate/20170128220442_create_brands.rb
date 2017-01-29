class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :year_of_founding
      t.string :country_of_origin
      t.string :logo

      t.timestamps
    end
  end
end
