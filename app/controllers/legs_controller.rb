class LegsController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user, except: [:index, :show]
  def new
  end
end
