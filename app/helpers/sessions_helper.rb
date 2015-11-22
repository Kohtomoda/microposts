module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> a661331afef07f5648fa776e6f0840618cd65df0
