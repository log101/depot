class UpdateOrderMailJob < ApplicationJob
  queue_as :default

  def perform(order)
    order.notify_update!(order)
  end
end