class MainController < ApplicationController
  def index
    flash[:notice] = "Success"
    flash[:alert] = "Pre-success"
  end
end