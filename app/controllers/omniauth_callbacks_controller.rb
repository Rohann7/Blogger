class OmniauthCallbacksController < ApplicationController
  def twitter
    render plain: 'twitter'
  end
end