# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :text
#  name       :text
#  is_seller  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :bookings
  has_many :plants
end
