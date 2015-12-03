class Favoritepost < ActiveRecord::Base
  belongs_to :favoritter, class_name: "User"
  belongs_to :favoritepost, class_name: "Micropost"
end
