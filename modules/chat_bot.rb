# frozen_string_literal: true

require 'telegram/bot'
require './config/environment'
require './assets/inline_button'
require './modules/listener/listener'
require './modules/listener/standart_messages'
require './modules/listener/response'
require './modules/constants'
require './modules/listener/callback_messages'

class ChatBot
  Telegram::Bot::Client.run(API_TOKEN) do |bot|
    bot.listen { |message| Listener.catch_new_message(message, bot) }
  end
end
