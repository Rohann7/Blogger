class SessionsController < ApplicationController
  def delete
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out successfully'
  end
end