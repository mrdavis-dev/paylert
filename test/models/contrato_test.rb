# == Schema Information
#
# Table name: contratos
#
#  id         :bigint           not null, primary key
#  item_id    :integer
#  dayrecord  :integer
#  idclient   :integer
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ContratoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
