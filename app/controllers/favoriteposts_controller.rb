class FavoritepostsController < ApplicationController
    before_action :logged_in_user
    
    def create
    @umicropost = Micropost.find(params[:favoritepost_id])
    current_user.favorite(@micropost)
    end
end
