import DMM_34401a as dmm
import serial
import time

logfilename = "dacvsdmm_newboard.csv"

dmm0 = dmm.DMM_init("/dev/ttyUSB0")
arduino = serial.Serial("/dev/ttyACM0")

time.sleep(1)
print(dmm.DMM_ID(dmm0))
time.sleep(1)

logfile = open(logfilename, "w")
logfile.write("Arduino DAC voltage (V),DMM voltage (V)")
logfile.close()

while True:
    arduinoline = arduino.readline().decode('utf-8')
    #print(arduinoline)
    arduinoval = arduinoline.split("\r")[0]
    dacval = dmm.DMM_read_raw(dmm0).decode('utf-8')
    dacval = dacval.split("\r")[0].replace("+","")
    #print(dacval)
    print("Arduino reports",arduinoval,"ADC reports",dacval)
    logfile = open(logfilename, "a")
    logfile.write(str(arduinoval)+","+str(dacval)+"\n")
    logfile.close()
