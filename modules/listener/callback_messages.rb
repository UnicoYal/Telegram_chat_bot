class ChatBot
  module Listener
    # This module assigned to processing all callback messages
    module CallbackMessages
      attr_accessor :callback_message
      def process
        self.callback_message = Listener.message.message
        case Listener.message.data
        when 'deals'
          Listener::Response.std_message(ChatBot::Constants::DEAL_MSGS.sample)
        when 'goodbye'
          Listener::Response.std_message(ChatBot::Constants::GOODBY_MSG)
        else
          Listener::Response.std_message(ChatBot::Constants::ERROR_MSG)
        end
      end

    module_function(
        :process,
        :callback_message,
        :callback_message=
    )
    end
  end
end
