class SessionsController < ApplicationController

  expose(:user) { User.find_by_email(params[:user][:email])}
  expose(:new_user, model: User)

  def create
    if user && user.authenticate(params[:user][:password])
      sign_in(user, false)
      redirect_to :root
    else
      redirect_to :sign_in
    end
  end

  def destroy
    sign_out
    redirect_to :sign_in
  end

end
