class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def authenticate_admin
    authentcate_user!
    if (current_user.try(:administrator) )
      return
    else
      redirect_to root_url
    end
  end
end
