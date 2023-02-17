import RPi.GPIO as GPIO
import time
import telepot
from telepot.loop import MessageLoop

telegram_bot = telepot.Bot('5901069952:AAGtcDjItEQKsstD6ulccGV1kzMVTXOfwbg')

GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)

a = 12 # IR Sensor
c = 36 # Buzzer

GPIO.setup(a,GPIO.IN) # Receive input from IR sensor
GPIO.setup(c,GPIO.OUT) # Output to buzzer

running = False

def action(msg):
    global chat_id 
    chat_id = msg['chat']['id']
    command = msg['text']

    global running

    if 'help' in command or 'start' in command:
        message = """\
                Hi there, welcome to Intruder Detection System user interface
                These are the commands:
                /help
                /on
                /off\
                """
        telegram_bot.sendMessage(chat_id,message)
    
    if 'on' in command:
        running = True
        telegram_bot.sendMessage(chat_id,'Turned On')

    if 'off' in command:
        running = False
        telegram_bot.sendMessage(chat_id,'Turned Off')
        
        
MessageLoop(telegram_bot, action).run_as_thread()

state = False

while True:
    if running:
        inputSensor = not GPIO.input(a) #Input from sensor
        print(inputSensor)
        GPIO.output(c, inputSensor)     #Output to buzzer
        if state != inputSensor:        #Check for different input
            state = inputSensor
            if state:                   #If state is true once output Telegram message
                telegram_bot.sendMessage(chat_id,'Intruder detected!')
    else:
        GPIO.output(c, False)           #Turn off buzzer
        print('waiting for start command...')