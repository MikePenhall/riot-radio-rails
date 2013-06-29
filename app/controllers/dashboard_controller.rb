class DashboardController < ApplicationController

  layout 'dashboard'

  before_filter :authenticate_admin!

  def show
  end

end