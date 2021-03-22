from scipy import signal
import matplotlib.pyplot as plt
import matplotlib.ticker
import numpy as np

# with 20khz sample rate, 1 is 10khz
# we want to cut out 59hz to 61hz

fs = 20000

width = 1
stopfreq = 180

wp = [(stopfreq-2)*2/fs, (stopfreq+2)*2/fs]
ws = [(stopfreq-1)*2/fs, (stopfreq+1)*2/fs]

gpass = 1
gstop = 10

system = signal.iirdesign(wp, ws, gpass, gstop)
systemsos = signal.iirdesign(wp, ws, gpass, gstop, output='sos')

print(systemsos)

w, h = signal.freqz(*system, 100000)

w_hz = []

for el in w:
    w_hz.append(el/3.141592*fs/2)

fig, ax1 = plt.subplots()

ax1.set_title('Digital filter frequency response')

ax1.plot(w_hz, 20 * np.log10(abs(h)), 'b')

ax1.set_ylabel('Amplitude [dB]', color='b')

ax1.set_xlabel('Frequency (Hz)')

#ax1.set_xscale("log")

#ax1.plot([0.006*3.14,0.006*3.14],[0,-20], c='black')

ax1.grid()

ax1.set_ylim([-120, 20])

ax2 = ax1.twinx()

angles = np.unwrap(np.angle(h))

ax2.plot(w_hz, angles, 'g')

ax2.set_ylabel('Angle (radians)', color='g')

ax2.grid()

ax2.axis('tight')
#ax1.set_xscale("log")

ax2.set_ylim([-6, 1])

nticks = 8

ax1.yaxis.set_major_locator(matplotlib.ticker.LinearLocator(nticks))

ax2.yaxis.set_major_locator(matplotlib.ticker.LinearLocator(nticks))

plt.xlim([0, 200])
plt.show()
