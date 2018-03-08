class ConnectionsController < ApplicationController
  def index
    @connections = current_user.friends
    @pending_connections = current_user.pending_friends
    # binding.pry
    authenticate_user!

  end


  # def show

  # end
end
