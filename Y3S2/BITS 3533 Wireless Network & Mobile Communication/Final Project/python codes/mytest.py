import telebot

bot = telebot.TeleBot('5925599053:AAGtUt8tdtxOjzz-kTvKkucp3ikSXr4x1EQ')


# Handle '/start' and '/help'
@bot.message_handler(commands=['help', 'start'])
def send_welcome(message):
    bot.reply_to(message, """\
Hi there
Commands:
/start
/help
/greet\
""")

@bot.message_handler(commands=['greet'])
def greet(message):
  bot.reply_to(message, "Hey! Hows it going?")
  print("Successfully sent")

bot.polling()