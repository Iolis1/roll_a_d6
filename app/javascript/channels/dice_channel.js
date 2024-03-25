import consumer from "./consumer"

consumer.subscriptions.create("DiceChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    document.getElementById('dice-result').innerHTML = data.result;
    // You can add an animation call here as well.
  }
});
