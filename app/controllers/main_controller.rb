class MainController < ApplicationController
  # before_action :authenticate_user!
  before_action :authenticate_user!
  
  def new
    redirect_to root_path, alert: "El registro de nuevos usuarios está desactivado."
  end

  def create
    redirect_to root_path, alert: "El registro de nuevos usuarios está desactivado."
  end

  def Home
  end
end
