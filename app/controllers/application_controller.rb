class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin!
    unless administrator_signed_in?
      redirect_to new_administrator_session_path and return
    end  
  end  
end
