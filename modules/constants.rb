class ChatBot
  module Constants
    SELECT_MSG = 'Привет, выбери из доступных действий'.freeze
    SORRY_MSG = 'Вай, я таких слов не знаю, прости'.freeze
    GOODBY_MSG = 'До свидания, моё сокровище'.freeze
    ERROR_MSG = 'Что-то пошло не так'.freeze
    DEAL_MSGS = [
      'У меня всё прекрасно, как всегда, а как у вас?',
      'Всё плохо, а как у вас?',
      'Более или менее, читали последние новости?'
    ].freeze
  end
end
