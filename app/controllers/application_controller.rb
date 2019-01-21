class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper # Sessions helper module from SessionController

  private

  # Confirms a logged-in user. Uses in Micropost- and user-controller
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
