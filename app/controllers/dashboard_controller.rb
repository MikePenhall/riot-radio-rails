class DashboardController < ApplicationController

  layout 'dashboard'

  before_filter :authenticate_administrator!

  def show
  end

end