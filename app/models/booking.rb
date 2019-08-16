# == Schema Information
#
# Table name: bookings
#
#  id         :bigint           not null, primary key
#  plant_id   :integer
#  user_id    :integer
#  from       :date
#  to         :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Booking < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :plant, :optional => true
end
