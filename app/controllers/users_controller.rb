class UsersController < ApplicationController
  before_action :set_user only: [:show, :edit, :update :destroy]
  before_action :authenticate_user, except: [:index, :show]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create

      end
    else
      render :new
    end
  end


  def allowed_params
    params.require(:user).permit(:name)
  end

  def update
    @user.update = false
    @user = User.find(params[:id])
    if @user.update_attributes(allowed_params)
      redirect_to @user, notice: "Successfully updated user information"
    else
      render :edit
    end
  end
end
