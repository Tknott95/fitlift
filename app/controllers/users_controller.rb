class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:id] = @user.id
      redirect_to user_profile_path(current_user),
        notice: "Thank you for signing up #{@user.first_name.titlecase}"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.all
  end

  private

  def user_params
    params.require(:user).permit(
      :username, :first_name, :last_name,
      :email, :password, :password_confirmation, :omniauth
    )
  end
end
