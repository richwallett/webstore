class OrderMailer < ActionMailer::Base
  default :from => "takeyourmoneyandsendthingslate@thief.com"

    def order_email(order)
      @user = order.user
      @products_ordered  = order.products
      mail(:to => @user.email, :subject => "Thank you for the monies.")
    end
end
