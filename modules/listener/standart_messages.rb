class ChatBot
  module Listener
    # This module assigned to processing all standart messages
    module StandartMessages
      def process
        case Listener.message.text
        when '/start'
          Response.inline_message(ChatBot::Constants::SELECT_MSG, Response.generate_inline_markup(InlineButton::BUTTONS))
        else
          Response.std_message(ChatBot::Constants::SORRY_MSG)
        end
      end

      module_function(
        :process
      )
    end
  end
end
