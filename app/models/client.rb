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
class Client < ApplicationRecord
    belongs_to :user
end
