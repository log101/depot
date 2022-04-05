class OrderMailer < ApplicationMailer
  default from: 'Furkan <ffrknerdm@gmail.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @order = order
    
    mail to: order.email, subject: "Prag store"
  end

  def updated(order)
    @order = order

    mail to: order.email, subject: "Order Date Update"
  end
  
  def shipped(order)
    @order = order
    
    mail to: order.email, subject: "Prag store"
  end
end
