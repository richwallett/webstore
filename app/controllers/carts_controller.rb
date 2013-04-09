class CartsController < ApplicationController
  before_filter :signed_in?, only: [:create]
  def new

  end

  def create
    product = Product.find_by_id(params[:value])
    session[:current_cart] ||= []
    session[:current_cart] << params[:value].to_i
    flash[:notices] ||= []
    flash[:notices] << "Added #{product.name} to cart."
    redirect_to products_path
  end

  def show
    session[:current_cart]
  end

  def destroy
    cart = session[:current_cart]
    cart.delete_at(cart.index(params[:value].to_i)) #REV: .delete(params[:value].to_i)
    session[:current_cart] = cart
    redirect_to carts_path
  end

  private

  def signed_in?
    unless cookies[:current_user]
      insert_into_flash_notices("Please sign in.") #REV: you guys are so "flashy"
      redirect_to products_path
    end
  end


end
