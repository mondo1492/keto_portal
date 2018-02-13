class Api::SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_cred(
      params[:user][:username],
      params[:user][:password]
    )
    if @user
      login!(@user)
      render 'api/users/show'
    else
      render(
        json: ["Invalid Username or Password"],
        status: 401
      )
    end
  end

  def destroy
    @user = current_user
    if @user
      logout!
      render 'api/users/show'
    else
      render(
        json: ["Nobody signed in"],
        status: 404
      )
    end
  end
end