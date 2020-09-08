class ClientsController < ApplicationController
    if session[:user_id]
        @user = User.find(session[:user_id])
        @ = @user.songs
      else
        @songs = Song.all # or force a login
      end
end
