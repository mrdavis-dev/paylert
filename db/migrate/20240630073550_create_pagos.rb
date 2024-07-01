class CreatePagos < ActiveRecord::Migration[7.1]
  def change
    create_table :pagos do |t|
      t.integer :idcliente
      t.decimal :pago
      t.string :metodopago
      t.string :descripcion
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
