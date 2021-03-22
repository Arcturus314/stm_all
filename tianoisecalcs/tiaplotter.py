import matplotlib.pyplot as plt
import statistics
import math

voltagevals = []
timevals = []

f = open("nocurrenttia_81hzsample.txt")


lineindex = 0
timeincrement = 1/81 # 81 hz

for line in f:
    voltagevals.append(float(line.split("\n")[0]))
    timevals.append(lineindex*timeincrement)
    lineindex += 1

plt.plot(timevals, voltagevals)

plt.show()

print("data mean",statistics.mean(voltagevals))
print("data stdev",statistics.stdev(voltagevals))
print("data snr",20*math.log10(statistics.mean(voltagevals)/statistics.stdev(voltagevals)))


from numpy.fft import fft, fftfreq

fftdiffs = fft(voltagevals)
fftfreqs = fftfreq(len(voltagevals))

fftfreqscorrected = []

for el in fftfreqs:
    fftfreqscorrected.append(el*81)

plt.plot(fftfreqscorrected, fftdiffs)
plt.ylim([0,5])
plt.xlim([0,50])
plt.show()
