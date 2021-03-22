# -*- coding: utf-8 -*-
"""
Created on Sun Jan 17 18:04:34 2021

@author: Kaveh Pezeshki
"""

import matplotlib.pyplot as plt
import statistics

f = open("onescan_halfms_maybeatoms.csv")

currents = []

for line in f:
    currents.append(float(line))
    
plt.plot(currents)

plt.show()

peak_positions = []
peak_position_vals = []


increasing = False
last_current = 0

counter = 0
for current in currents:
    counter += 1
    if current > last_current:
        increasing = True
    elif current < last_current and increasing == True:
        print("peak found")
        peak_positions.append(counter)
        peak_position_vals.append(current)
        increasing = False
    elif current < last_current:
        continue
        
    last_current = current
    
print(peak_positions)
print(peak_position_vals)

peak_position_diffs = []

for i in range(1,len(peak_positions)):
    peak_position_diffs.append(peak_positions[i]-peak_positions[i-1])
    
plt.hist(peak_position_diffs, bins=50)
plt.show()

plt.plot(peak_position_diffs)

mode = statistics.mode(peak_position_diffs)

print("mode diff", mode)

print("freq at this median, assuming 1300Hz sample", 1300/mode)

# we're seeing 801.3 Hz sample rate using the logic analyzer with a 1ms delay ... changing delay to 500us

# with a 0.5ms delay, we see a total period of 750us, so 1.3kHz sample rate