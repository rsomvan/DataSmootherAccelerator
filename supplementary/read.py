import serial
import binascii
import csv

ser = serial.Serial('COM6', 9600, timeout=0.05)

with open('data.txt', 'w') as f:
    while 1:
        while ser.in_waiting:
            data_in = binascii.hexlify(ser.read(4))

            print(data_in[0:4] == b'0a0d')
            f.write(str(int(str(data_in[4:8])[2:-1], 16))) 
            f.write('\n')

        