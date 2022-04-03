class LineItemsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "line_items"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
