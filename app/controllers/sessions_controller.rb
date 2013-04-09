class SessionsController < ApplicationController

  def new
    # check_password(user)
 #    set_session
 #    redirect_to index
  end

  def create
    if User.check_password(params[:session])
      signed_in_user = User.find_by_email(params[:session][:email])
      cookies.permanent[:current_user] = signed_in_user.id
      flash[:notices] ||= []
      flash[:notices] << "Signed in as #{params[:session][:email]}"
      redirect_to products_path
    else
      flash[:notices] ||= []
      flash[:notices] << "Incorrect email and/or password"
      render :new
    end
  end

  def destroy
    cookies.delete(:current_user)
    session.delete(:current_cart)
    flash[:notices] ||= []
    flash[:notices] << "Logged out."
    redirect_to new_session_path
  end

end
