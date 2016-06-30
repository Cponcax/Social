class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    raise request.env["omniauth.auth"].to_json
  end
end



