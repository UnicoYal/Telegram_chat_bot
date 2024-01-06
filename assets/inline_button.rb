class ChatBot
  module InlineButton
    BUTTONS = [[
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Github разработчика', url: 'https://github.com/UnicoYal'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Завершить', callback_data: 'goodbye'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Как дела?', callback_data: 'deals')
    ]]
  end
end
