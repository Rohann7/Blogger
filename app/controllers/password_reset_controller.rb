class PasswordResetController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_now
    redirect_to root_path, notice: 'Link has been sent to your email address'
    end
  end

  def edit
    @user = User.find_signed!(params[:token], purpose: 'password reset')
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to sign_in_path, alert: 'Your token has expired, please try again'
  end

  def update
    @user = User.find_signed!(params[:token], purpose: 'password reset')
    if @user.update(password_params)
      redirect_to sign_in_path, notice: 'Password was reset successfully'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end