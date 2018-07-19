class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'
 
  def user_email(order)
    @order = order
    
    mail(to: @order.email, subject: "Order #{@order.id}")
  end
end
