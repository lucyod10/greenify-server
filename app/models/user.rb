# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :text
#  name            :text
#  is_seller       :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  admin           :boolean          default(FALSE)
#

class User < ApplicationRecord
  # Authentication

  # TODO: this line prevents the new user from being saved.
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  # To add specific variables to the token payload:
    # def to_token_payload
    # {
    #   sub: id,
    #   name: name
    # }
    # end

  # Associations
  has_many :bookings
  has_many :plants
end
