class AddEmailToFactoryContacts < ActiveRecord::Migration
  def change
    add_column :factory_contacts, :first_contact_email, :string
    add_column :factory_contacts, :first_contact_phone, :string
    add_column :factory_contacts, :second_contact_email, :string
    add_column :factory_contacts, :second_contact_phone, :string
    remove_column :factory_contacts, :third_contact, :string

  end
end
