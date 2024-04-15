class DiceChannel < ApplicationCable::Channel
  def subscribed
    stream_from "dice_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def roll(data)
    ActionCable.server.broadcast('dice_channel', result: rand(1..6))
  end
end

