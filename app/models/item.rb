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
class Item < ApplicationRecord
  belongs_to :user
end
