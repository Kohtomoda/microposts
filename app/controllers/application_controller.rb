class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
<<<<<<< HEAD
end

=======
end
>>>>>>> a661331afef07f5648fa776e6f0840618cd65df0
