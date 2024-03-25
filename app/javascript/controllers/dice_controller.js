// app/javascript/controllers/dice_controller.js
import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  connect() {
    this.channel = consumer.subscriptions.create("DiceChannel", {
      received(data) {
        document.getElementById('dice-result').innerHTML = data.result;
      }
    });
  }

  roll() {
    this.channel.perform('roll');
  }

  disconnect() {
    consumer.subscriptions.remove(this.channel)
  }
}
