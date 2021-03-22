import matplotlib.pyplot as plt
from scipy.stats import linregress
import scipy.signal
import sys
import math
import copy
from scipy import fftpack
import numpy as np
import statistics

#sosmatrix = 

class Biquad:
    def __init__():
        a = [0,0,0]
        b = [0,0,0]
        x0 = 0
        x1 = 0
        y0 = 0
        y1 = 0

    def setcoeffs(coeffs):
        a[0] = coeffs[0]
        a[1] = coeffs[1]
        a[2] = coeffs[2]
        b[0] = coeffs[3]
        b[1] = coeffs[4]
        b[2] = coeffs[5]

        x0 = 0
        x1 = 0
        y0 = 0
        y1 = 0

    def filter(inval):
        result = inval*a[0] + x0*a[1] + x1*a[2] - y0*b[1] - y1*b[2]


def filter_manual(ylist, coeffs):
    x0 = 0
    x1 = 0
    y0 = 0
    y1 = 0
    outlist = []
    for el in ylist:
        result = el*coeffs[0] + x0*coeffs[1] + x1*coeffs[2] - y0*coeffs[4] - y1*coeffs[5]
        x1 = x0
        x0 = el
        y1 = y0
        y0 = result

        outlist.append(result)

    return outlist

def filter_mult_sos(ylist, sosmatrix):
    ylist_out = ylist
    for l in sosmatrix:
        ylist_out = filter_manual(copy.deepcopy(ylist_out), l)

    return ylist_out

def gen_sos(freq, order, width, stopdb):

    gpass = 1
    gstop = stopdb

    samplerate = 20000
    nyquist = samplerate/2

    wp = [(freq*order-width*2)/nyquist, (freq*order+width*2)/nyquist]
    ws = [(freq*order-width)/nyquist, (freq*order+width)/nyquist]

    print("passband",wp)
    print("stopband",ws)

    systemsos = scipy.signal.iirdesign(wp, ws, gpass, gstop, output='sos')

    print("system")
    print(systemsos)

    systemsos_list = []
    for el in systemsos:
        systemsos_list.append(list(el))


    return systemsos_list

def filter_sos(ylist):

    systemsos = []

    systemsos += gen_sos(60, 1, 0.5, 20)
    systemsos += gen_sos(60, 2, 0.5, 20)
    systemsos += gen_sos(60, 3, 0.5, 20)
    systemsos += gen_sos(60, 4, 0.5, 20)
    #systemsos += gen_sos(60, 5, 0.5, 15)
    #systemsos += gen_sos(60, 6, 0.5, 15)

    #systemsos.append(gen_sos(66, 1, 0.5, 15)[0])
    #systemsos.append(gen_sos(66, 2, 0.5, 15)[0])
    #systemsos.append(gen_sos(66, 3, 0.5, 15)[0])

    print("total system")
    print("[")
    for el in systemsos: print("    ",el)
    print("]")
    print("in c++ notation")
    print("double sosmatrix_60hz["+str(len(systemsos))+"][6] = {")

    for subsystem in systemsos:
        print("    {",end="")
        for el in subsystem:
            print(str(el),end="")
            if el != subsystem[-1]: print(",", end="")
        print("}",end="")
        if subsystem != systemsos[-1]: print(",")
        else: print("")
    print("};");

    w, h = scipy.signal.sosfreqz(systemsos, 20000)
    w_hz = []
    for el in w:
        w_hz.append(el/3.141592*20000/2)
    plt.plot(w_hz, 20 * np.log10(abs(h)), 'b')
    plt.xlim([0,400])
    plt.xlabel("freq (Hz)")
    plt.ylabel("response (dB)")
    plt.show()

    yvals_f = scipy.signal.sosfilt(systemsos,ylist)
    return yvals_f

def averageinblocks(ylist, block_size):
    num_blocks = int(len(ylist)/block_size)
    out = []
    for block_index in range(num_blocks):
        ylist_section = ylist[block_index*block_size: (block_index+1)*block_size]
        mean = statistics.mean(ylist_section)
        out += [mean]*block_size

    return out


# reading data

f = open("noise50kpoints3.txt")
currents = []
for line in f:
    currents.append(int(line.split("\n")[0]))

currents_withoutdc = []
mean = statistics.mean(currents)


for c in currents:
    currents_withoutdc.append(c)


xvals = np.linspace(0,len(currents_withoutdc)/20000, len(currents_withoutdc))

testsignal = 50*np.sin(xvals*2*3.141592*40)

currents = currents_withoutdc# + testsignal

currents_filt = filter_sos(currents)
currents = currents

currfft = fftpack.fft(currents)
currfft_filtered = fftpack.fft(currents_filt)
currfreqs = fftpack.fftfreq(len(currents)) * 20000

plt.plot(currfreqs, np.abs(currfft), label="unfiltered", alpha=0.5)
plt.plot(currfreqs, np.abs(currfft_filtered), label="filtered", alpha=0.5)
plt.xlabel("freq (Hz)")
plt.legend()
plt.title("current FFT")
plt.yscale("log")
plt.xlim([0,400])
plt.show()

currents_blockaverage = averageinblocks(currents_filt, 25)

print("rms currents",(max(currents[-5000:])-min(currents[-5000:]))/math.sqrt(2))
print("rms filtered currents",(max(currents_filt[-5000:])-min(currents_filt[-5000:]))/math.sqrt(2))
print("rms filtered averaged currents",(max(currents_blockaverage[-5000:])-min(currents_blockaverage[-5000:]))/math.sqrt(2))

plt.plot(currents)
plt.plot(currents_filt)
plt.plot(currents_blockaverage)
#plt.plot(testsignal)
plt.show()
