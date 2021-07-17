class CreateInscrits < ActiveRecord::Migration[6.1]
  def change
    create_table :inscrits do |t|
      t.string :firstname
      t.string :lastname
      t.string :birthdate
      t.integer :amount
      t.string :adress
      t.integer :zipcode
      t.string :city
      t.timestamps
    end
  end
end
