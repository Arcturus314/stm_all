import matplotlib.pyplot as plt
import scipy.signal
from scipy import signal
import numpy as np
import math

bandstop4th_coeffs = [
        [0.9998,-1.9992,0.9998,1.0000,-1.9992,0.9996],
        [0.9998,-1.9992,0.9998,1.0000,-1.9992,0.9996]]

bandstop8th_coeffs = [
        [0.9999,-1.9994,0.9999,1.0000,-1.9994,0.9998],
        [0.9999,-1.9994,0.9999,1.0000,-1.9994,0.9998],
        [0.9997,-1.9991,0.9997,1.0000,-1.9991,0.9994],
        [0.9997,-1.9991,0.9997,1.0000,-1.9991,0.9994]]

bandstop_scipy = [[0.99884837,-1.99734223,0.99884837,1,-1.99772833,0.99808291]]#, [1.,-1.99962856,1.,1.,-1.99942254,0.99980075],[ 1.,-1.99966088,1.,1.,-1.99948005,0.99981304]]
bandstop_scipy = [[ 0.9690671,-1.68746571,0.9690671,1.,-1.6966456,0.94867774]]



#print("shape",shape(bandstop4th_coeffs))

sample_rate = 733 #Hz

def generate_period(frequency):
    num_points = 100*int(sample_rate*1/frequency)
    print("frequency",frequency,"num_points",num_points)
    xspacing = 1/(sample_rate) # units of seconds
    xlist = []
    for i in range(num_points):
        xlist.append(i*xspacing)
    ylist = []
    for x in xlist:
        ylist.append(math.sin(2*3.14159*frequency*x))

    #return xlist, [0]*int(num_points/2) + [1]*int(num_points/2)
    plt.plot(ylist[0:28])
    plt.show()
    return xlist,ylist


def filter_manual(ylist, coeffs):
    x0 = 0
    x1 = 0
    y0 = 0
    y1 = 0
    outlist = []
    for el in ylist:
        result = el*coeffs[0][0] + x0*coeffs[0][1] + x1*coeffs[0][2] - y0*coeffs[0][4] - y1*coeffs[0][5]
        x1 = x0
        x0 = el
        y1 = y0
        y0 = result

        outlist.append(result)

    return outlist


freqs = []
mags = []

for frequency in [66]:# np.logspace(1,4,1000):
    if frequency < 7000:
        xvals,yvals = generate_period(frequency) # generating single period at 60hz
        yvals_f = scipy.signal.sosfilt(bandstop_scipy,yvals)
        yvals_fm = filter_manual(yvals, bandstop_scipy)
        freqs.append(frequency)
        mags.append( 20*math.log10((max(yvals_fm[int(len(yvals_f)/2):]) - min(yvals_fm[int(len(yvals_f)/2):]))/2) )
        plt.plot(xvals,yvals)
        plt.plot(xvals, yvals_f, label="scipy", alpha = 0.5)
        plt.plot(xvals, yvals_fm, label="me", linestyle='--')
        plt.title("freq="+str(frequency))
        plt.legend()
        plt.show()

plt.plot(freqs, mags)
plt.xscale('log')
plt.title("2nd order Butterworth notch filter @60hz")
plt.xlabel("frequency (Hz)")
plt.ylabel("Gain (dB)")
plt.grid()
plt.show()
