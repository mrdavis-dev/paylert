class CreateContratos < ActiveRecord::Migration[7.1]
  def change
    create_table :contratos do |t|
      t.integer :item_id
      t.integer :dayrecord
      t.integer :idclient
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
