# == Schema Information
#
# Table name: items
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :string
#  price       :decimal(, )
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
