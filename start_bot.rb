# frozen_string_literal: true

require 'telegram/bot'
require './config/environment'

Telegram::Bot::Client.run(API_TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      text = "Привет, #{message.from.first_name}"
    else
      text = 'Вай, я таких слов не знаю, прости'
    end

    bot.api.sendMessage(chat_id: message.chat.id, text: text)
  end
end
