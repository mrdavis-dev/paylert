class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :whatsapp

      t.timestamps
    end
  end
end
