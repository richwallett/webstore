class OrdersController < ApplicationController

  def create
    order = Order.new
    order.product_ids = session[:current_cart]
    order.user_id = cookies[:current_user].to_i
    order.save
    #log_order
    OrderMailer.order_email(order).deliver
    session.delete(:current_cart)
    flash[:notices] = [] if flash[:notices].nil?
    flash[:notices] << "Thank you for your money."
    redirect_to products_path
  end

end
