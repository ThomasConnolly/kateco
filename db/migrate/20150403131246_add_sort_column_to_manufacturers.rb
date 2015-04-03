class AddSortColumnToManufacturers < ActiveRecord::Migration
  def change
    add_column :manufacturers, :sort_letter, :string
  end
end
