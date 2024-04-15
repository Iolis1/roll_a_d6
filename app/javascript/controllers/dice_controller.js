// app/javascript/controllers/dice_controller.js
import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static targets = ["result"]

  connect() {
    this.subscription = consumer.subscriptions.create("DiceChannel", {
      received(data) {
        this.resultTarget.textContent = data.result;
      }
    });
  }

  disconnect() {
    if (this.subscription) {
      consumer.subscriptions.remove(this.subscription)
    }
  }

  roll() {
    this.subscription.perform('roll')
  }
}
