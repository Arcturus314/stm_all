import matplotlib.pyplot as plt
import math

f = open("dacvsdmm_newboard.csv","r")

f.readline()

arduino = []
dmm = []

lineindex = 0
for line in f:
    a,d = line.split("\n")[0].split(",")
    if float(a) < 60000 and float(a) > 5000:
        arduino.append(float(a))
        dmm.append(float(d))
    lineindex += 1

plt.plot(dmm)
plt.show()

plt.plot(arduino,dmm)#, marker = "+")
plt.show()

# linear regression

import numpy as np
from sklearn.linear_model import LinearRegression

x = np.array(arduino).reshape((-1,1))
y = np.array(dmm)

model = LinearRegression()
model.fit(x,y)

print("r^2",model.score(x,y))

y_pred = model.predict(x)
y_resids = y - y_pred

plt.scatter(x, y_resids, marker = "+", s=1)
plt.grid()
plt.show()

# calculating error deltas

dmm_diffs = []

for meas_index in range(1,len(dmm)):
    diff = dmm[meas_index]-dmm[meas_index-1]
    if abs(diff) < 0.01: dmm_diffs.append(diff)

plt.hist(dmm_diffs, bins=500, range = (-0.001, 0.001))
plt.show()

import statistics
import math

print("step mean:", statistics.mean(dmm_diffs))
print("step stdev:", statistics.stdev(dmm_diffs))
print("step min:", min(dmm_diffs))
print("step max:", max(dmm_diffs))

print("snr (dB):", 20*math.log10( (max(dmm)-min(dmm))/statistics.stdev(dmm_diffs)))
print("step precision (dB):", 20*math.log10( (max(dmm)-min(dmm))/statistics.mean(dmm_diffs)))
print("theoretical max step precision (dB):", 20*math.log10(2**16))

#from scipy.fft import fft, ifft

#fftdiffs = fft(dmm_diffs)

#plt.plot(fftdiffs)
#plt.ylim([0,1])
#plt.show()
