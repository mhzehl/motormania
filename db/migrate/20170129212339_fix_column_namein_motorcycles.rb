class FixColumnNameinMotorcycles < ActiveRecord::Migration[5.0]
  def change
    rename_column :motorcycles, :type, :name
  end
end
