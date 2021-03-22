class UsersController < ApplicationController

  # before_action :set_user, only: [:show, :edit, :update, :destroy]
  # after_action :set_user, only: [:show, :edit, :update, :destroy]
  # before_action :get_track_parent, only: [:create, :destroy]

  # GET /users

  def index
    @select_user = User.where(id: params[:selected_user]).first || User.first

    @users = User.all
  end

  # GET /users/1

  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "User was successfully created."
    else
      render :new
    end

    cookies[:name] = {
      value: "a yummy cookie",
      expires: 1.year,
      domain: "domain.com",
    }

    cookies[:user_name] = "dived"

    cookies[:login] = {
      value: "XJ-122",
      expires: Time.utc(2040, 10, 15, 5),
    }

    cookies.delete(:user_name, domain: "school.com")
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @current_user = User.find(params[:id])

    if current_user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id]).destroy!
    redirect_to login_path, notice: "User was successfully destroyed."
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:name, :email, :gender, :religion, :password, :password_confirmation, :role_id)
  end

  private

  # def set_user
  #   @user = User.find(params[:id])
  # end
end
