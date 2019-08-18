class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token, raise: false #This is required for APIs
  # This allows us to call the following in any of the controllers:
    # before_action :authenticate_user
  # then in any method:
    # current_user.admin?
  include Knock::Authenticable
end
