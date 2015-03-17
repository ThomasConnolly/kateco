class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.text :summary
      t.string :composite_url
      t.string :logo_url
      t.string :company_url

      t.timestamps null: false
    end
  end
end
