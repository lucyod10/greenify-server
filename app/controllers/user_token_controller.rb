class UserTokenController < Knock::AuthTokenController
  # Allow login from another domain (i.e. react)
  skip_before_action :verify_authenticity_token, raise: false
end
