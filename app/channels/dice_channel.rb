# app/channels/dice_channel.rb
class DiceChannel < ApplicationCable::Channel
  def subscribed
    stream_from "dice_channel"
  end

  def roll
    ActionCable.server.broadcast('dice_channel', result: rand(1..6))
  end
end
