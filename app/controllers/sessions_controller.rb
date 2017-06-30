class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def login
    if signed_in?
      redirect_to legs_url
  end
end

  def create
    reset session
    auth_hash = request.env['omniauth.auth']
    @user = User.find_or_create_by(uid: auth_hash['uid']) do |user|
      user.email = auth_hash['info']['email']

  end
  self.current_user = @user
  redirect_to legs_url
end

  def logout
    redirect_to login_url, notice: 'You have been logged out'
  end
end
