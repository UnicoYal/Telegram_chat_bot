class ChatBot
  module Listener
    attr_accessor :message, :bot

    def catch_new_message(message, bot)
      self.message = message
      self.bot = bot

      case self.message
      when Telegram::Bot::Types::CallbackQuery
        CallbackMessages.process
      when Telegram::Bot::Types::Message
        StandartMessages.process
      end
    end

    module_function(
      :catch_new_message,
      :message,
      :message=,
      :bot,
      :bot=
    )
  end
end
