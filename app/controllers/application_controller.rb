class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper # Sessions helper module from SessionController
end
