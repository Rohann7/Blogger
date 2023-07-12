class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'User was successfully created'
    else
      # Rails 7 has Hotwire enabled by default, and it will validate the response status code. 
      # For failed validation, the status code should be 422 (Unprocesssable entity). 
      # Otherwise, Hotwire may believe the form is valid, hence it doesn't work.
      render :new, status: :unprocessable_entity 
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
