class User < ActiveRecord::Base

  include Authem::User

  attr_accessible :email, :password_digest, :reset_password_token, :session_token

end
