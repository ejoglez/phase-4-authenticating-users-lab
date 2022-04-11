class UsersController < ApplicationController

  def show
    users_id = session[:user_id]
    me = User.find_by(id: users_id)
    render json: me, status: :ok
  end 

end
