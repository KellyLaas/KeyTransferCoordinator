class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def login
  end
  def create
    auth_hash = request.env['omniauth.auth']
    @user = User.find_or_create_by(uid: auth_hash['uid']) do |user|
      user.image.url = auth_hash['info']['image']
  end
end
  def logout
    redirect_to login_url, notice: 'You have been logged out'
  end
end
