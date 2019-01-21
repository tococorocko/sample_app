class MicropostsController < ApplicationController
  # see application controller:
  before_action :logged_in_user, only: [:create, :destroy]

  def create
  end

  def destroy
  end
end
