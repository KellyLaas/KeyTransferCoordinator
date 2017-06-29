class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def login
    if signed_in?
    end
  end

  def update
  end

  def create
    #reset session for security
    reset_session
    #grab the omniauth hash
    auth_hash = request.env['omniauth.auth']
    #find or create user based on uid
    @user = User.find_or_create_by(uid: auth_hash['uid']) do |user|
      user.email = auth_hash['info']['email']
      #the user should update their profile
      @user.update = true
    end
    #sets the current user
    self.current_user = @user
    #send new users to the user update url in routes if they need to update
    #otherwise, redirect them to legs
    if @user.update
      redirect_to user_new_url
    else
      redirect_to legs_url
    end

    def logout
      redirect_to legs_url, notice: 'You have been logged out'
    end
  end
end
