class AddStatusColumnToPagos < ActiveRecord::Migration[7.1]
  def change
    add_column :pagos, :status, :string
  end
end
