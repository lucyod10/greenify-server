# == Schema Information
#
# Table name: plants
#
#  id          :bigint           not null, primary key
#  name        :text
#  images      :text
#  age         :text
#  status      :text
#  cost        :integer
#  worth       :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Plant < ApplicationRecord
  has_many :bookings
  belongs_to :user, :optional => true
  has_many :availabilities
end
