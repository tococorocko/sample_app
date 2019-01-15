class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      # Create an error message. No Model for sessions, so no active record error messages. .now necessary so error message disapears after render
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out # defined sessions helper
    redirect_to root_url
  end
end
