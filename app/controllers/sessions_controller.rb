class SessionsController < ApplicationController
  def new
  end

  # def index
  #   if current_user.role.name == "admin"
  #     @select_user = User.where(id: params[:selected_user]).first || User.first
  #     @users = User.all
  #   end
  # end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id

      redirect_to user
    else
      flash.now[:danger] = "Check email or password. Try again."
      render "new"
    end
  end

  def delete
    session.delete(:user_id)
    @current_user = nil
    redirect_to site_home_path
  end
end
