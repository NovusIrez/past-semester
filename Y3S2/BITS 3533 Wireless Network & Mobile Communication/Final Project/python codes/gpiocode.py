import Rpi.GPIO as GPIO  #import GPIO package
import time

#set Raspberry Pi GPIO to GPIO numbering mode
GPIO.setmode(GPIO.BCM)

#disable warnings that the GPIO is in use
GPIO.setwarnings(False)

#set GPIO 18, 14, 15 as an output
GPIO.setup(18,GPIO.OUT)
GPIO.setup(14,GPIO.OUT)
GPIO.setup(15,GPIO.OUT)

while True:  #start loop forever
    print("LED on")
    #set GPIO18 to High/True/turning on
    GPIO.output(18,GPIO.HIGH)
    #suspends for 5 seconds
    time.sleep(5)

    print("LED off")
    #set GPIO18 to Low/False/turning off
    GPIO.output(18,GPIO.LOW)
    #suspends for 2 seconds
    time.sleep(2)
    
    print("LED on")
    #set GPIO14 to High/True/turning on
    GPIO.output(14,GPIO.HIGH)
    #suspends for 5 seconds
    time.sleep(5)

    print("LED off")
    #set GPIO14 to Low/False/turning off
    GPIO.output(14,GPIO.LOW)
    #suspends for 2 seconds
    time.sleep(2)

    print("LED on")
    #set GPIO15 to High/True/turning on
    GPIO.output(15,GPIO.HIGH)
    #suspends for 5 seconds
    time.sleep(5)

    print("LED off")
    #set GPIO15 to Low/False/turning off
    GPIO.output(15,GPIO.LOW)
    #suspends for 2 seconds
    time.sleep(2)
