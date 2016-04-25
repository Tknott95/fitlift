class SessionsController < ApplicationController

  def login
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      #User provided a valid password
      sessiion[:id] = user.id
      redirect_to root_path,
        notice: "Welcome back #{user.first_name.titleize}"
    else
      flash[:error] = 'Invalid email or password'
      render :login
    end
  end

end
