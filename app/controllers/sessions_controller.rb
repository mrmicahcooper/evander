class SessionsController < ApplicationController

  expose(:new_user, model: User)

  def create
    require 'pry'; binding.pry
    if sign_in(params[:user][:email], params[:user][:password])
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
