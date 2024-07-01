# == Schema Information
#
# Table name: pagos
#
#  id          :bigint           not null, primary key
#  idcliente   :integer
#  pago        :decimal(, )
#  metodopago  :string
#  descripcion :string
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  status      :string
#
require "test_helper"

class PagoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
