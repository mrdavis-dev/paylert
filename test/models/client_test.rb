# == Schema Information
#
# Table name: clients
#
#  id         :bigint           not null, primary key
#  nombre     :string
#  apellido   :string
#  email      :string
#  whatsapp   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
require "test_helper"

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
