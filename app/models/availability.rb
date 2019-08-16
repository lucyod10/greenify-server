# == Schema Information
#
# Table name: availabilities
#
#  id         :bigint           not null, primary key
#  from       :date
#  to         :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Availability < ApplicationRecord
  belongs_to :plant, :optional => true
end
