import consumer from "./consumer"

consumer.subscriptions.create("LineItemsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    const lineElement = document.querySelector("div.carts")
    if (lineElement) {
      lineElement.innerHTML = data.html
    }
  }
});
