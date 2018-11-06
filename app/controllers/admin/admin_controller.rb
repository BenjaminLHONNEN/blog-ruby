class Admin::AdminController < ApplicationController

  before_action :authenticate_user!

  def dashboard
    @data = DashboardFacade.new(current_user)
  end

end