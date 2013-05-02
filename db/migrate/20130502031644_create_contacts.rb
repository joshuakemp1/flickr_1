class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.integer :zip
      t.text :request

      t.timestamps
    end
  end
end
