class ApplicationController < ActionController::Base
  before_action :require_login

  protect_from_forgery with: :exception

def not_authenticated
  redirect_to login_url, alert: "First login to access this page."
end

end
