# frozen_string_literal: true

require 'telegram/bot'
require './config/environment'

Telegram::Bot::Client.run(API_TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.sendMessage(chat_id: message.chat.id, text: "Привет, #{message.from.first_name}")
    end
  end
end
