class CreateFactoryContacts < ActiveRecord::Migration
  def change
    create_table :factory_contacts do |t|
      t.string :first_contact
      t.string :second_contact
      t.string :third_contact
      t.integer :manufacturer_id

      t.timestamps null: false
    end
  end
end
