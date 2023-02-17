import telepot
from telepot.loop import MessageLoop

telegram_bot = telepot.Bot('')
def action(msg):
    chat_id = msg['chat']['id']
    command = msg['text']

    if 'Hello' in command:
        message = "Hi There!"
        telegram_bot.sendMessage(chat_id,message)

MessageLoop(telegram_bot, action).run_as_thread()