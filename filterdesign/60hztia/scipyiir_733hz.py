from scipy import signal
import matplotlib.pyplot as plt
import matplotlib.ticker
import numpy as np

# with 733hz sample rate, 1 is 10khz
# we want to cut out 59hz to 61hz

samplerate = 733
nyquist = samplerate/2

wp_hz = [64, 68]
ws_hz = [65, 67]

wp = []
ws = []

for el in wp_hz: wp.append(el / nyquist)
for el in ws_hz: ws.append(el / nyquist)

gpass = 1
gstop = 20

system = signal.iirdesign(wp, ws, gpass, gstop)
systemsos = signal.iirdesign(wp, ws, gpass, gstop, output='sos')

print(systemsos)

w, h = signal.freqz(*system, 100000)

fig, ax1 = plt.subplots()

ax1.set_title('Digital filter frequency response')

ax1.plot(w, 20 * np.log10(abs(h)), 'b')

ax1.set_ylabel('Amplitude [dB]', color='b')

ax1.set_xlabel('Frequency [rad/sample]')

ax1.set_xscale("log")

#ax1.plot([0.006*3.14,0.006*3.14],[0,-20], c='black')

ax1.grid()

ax1.set_ylim([-120, 20])

ax2 = ax1.twinx()

angles = np.unwrap(np.angle(h))

ax2.plot(w, angles, 'g')

ax2.set_ylabel('Angle (radians)', color='g')

ax2.grid()

ax2.axis('tight')
ax1.set_xscale("log")

ax2.set_ylim([-6, 1])

nticks = 8

ax1.yaxis.set_major_locator(matplotlib.ticker.LinearLocator(nticks))

ax2.yaxis.set_major_locator(matplotlib.ticker.LinearLocator(nticks))

plt.xlim([.01,10])
plt.show()

