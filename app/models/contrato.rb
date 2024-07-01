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
class Contrato < ApplicationRecord
  belongs_to :user
end
