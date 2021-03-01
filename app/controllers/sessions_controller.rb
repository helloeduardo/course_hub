class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user
      session[:user_id] = user.id
      flash[:notice] = "Welcome, #{user.name}!"
      redirect_to '/dashboard'
    else
      flash[:notice] = 'Your email was incorrect!'
      redirect_to '/'
    end
  end
end
