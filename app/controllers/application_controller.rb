class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def admin_auth
    if not_admin?
      flash[:alert] = "You aren't authorized to visit that page. You need to log in as an admin."
      redirect_to '/'
    end
  end

  def not_admin?
    if !current_user
      true
    elsif !current_user.admin
      true
    else
      false
    end
  end

  def authorize
    if !current_user
      flash[:alert] = "You aren't authorized to visit that page. Try logging in."
      redirect_to '/'
    end
  end
end
