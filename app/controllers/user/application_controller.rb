class User::ApplicationController < ActionController::Base
  before_action :authenticate_user!
  layout 'user_application'

end

