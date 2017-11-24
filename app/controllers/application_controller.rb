class ApplicationController < ActionController::Base
  # By allowing inheriting from ::Base more is modules are included.
  protect_from_forgery with: :null_session
end
