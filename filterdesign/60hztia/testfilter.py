import matplotlib.pyplot as plt
import math
import numpy as np

sample_rate = 20e3 #kHz

def generate_period(frequency):
    num_points = 50*int(sample_rate*1/frequency)
    print("frequency",frequency,"num_points",num_points)
    xspacing = 1/(sample_rate) # units of seconds
    xlist = []
    for i in range(num_points):
        xlist.append(i*xspacing)
    ylist = []
    for x in xlist:
        ylist.append(math.sin(2*3.14159*frequency*x))
    return xlist,ylist

def calc_mag(frequency):
    xlist, ylist = generate_period(frequency)
    ylist_f = filter_FIR(ylist)
    return (max(ylist_f)-min(ylist_f))/2

def filter(ylist):
    v0 = 0
    v1 = 0
    v2 = 0
    v3 = 0
    v4 = 0

    filtered_ylist = []

    for y in ylist:
        v0 = v1
        v1 = v2
        v2 = v3
        v3 = v4
        #v4 = (6.459868831171222681e-5  * y) + (-0.99911181807963866941 * v0) + (3.99662513979916500517 * v1) + (-0.98771764602067602112 * v2) + (1.98745925126742917222 * v3)
        #filtered_ylist.append(v2+v4+2*v3)
        v4 = (9.997137612869119172e-1 * y) + (-0.99942780182161106151 * v0) + (3.99757275982202875397 * v1) + (-5.99686203706488285547 * v2) + (3.99871695293598206078 * v3)
        filtered_ylist.append(1.000000 * v0+v4- 3.999290 * v1- 3.999290 * v3+5.998579 * v2)

    return filtered_ylist

def filter_FIR(ylist):
    #taps = [3.410572099418414,-13.62196005050024,20.46347837652204,-13.62196005050024,3.410572099418414]
    taps = [
    0.000000000000000000,
    -0.000025695329810175,
    -0.000109001586731170,
    -0.000261383834469497,
    -0.000497284187006939,
    -0.000834034055775751,
    -0.001291444409523049,
    -0.001891070645768172,
    -0.002655173095064218,
    -0.003605418278370960,
    -0.004761388110941483,
    -0.006138982684280024,
    -0.007748815659053334,
    -0.009594708572398906,
    -0.011672390798343837,
    -0.013968505240990876,
    -0.016460006299700354,
    -0.019114016903342568,
    -0.021888186575993940,
    -0.024731564041054279,
    -0.027585967536853457,
    -0.030387805705078649,
    -0.033070273559075526,
    -0.035565823484471772,
    -0.037808792095928072,
    -0.039738051371860414,
    -0.041299547699896848,
    -0.042448595699213505,
    -0.043151804843812071,
    0.956611464609619988,
    -0.043151804843812071,
    -0.042448595699213505,
    -0.041299547699896848,
    -0.039738051371860407,
    -0.037808792095928072,
    -0.035565823484471785,
    -0.033070273559075540,
    -0.030387805705078645,
    -0.027585967536853460,
    -0.024731564041054296,
    -0.021888186575993951,
    -0.019114016903342579,
    -0.016460006299700354,
    -0.013968505240990888,
    -0.011672390798343854,
    -0.009594708572398910,
    -0.007748815659053343,
    -0.006138982684280031,
    -0.004761388110941481,
    -0.003605418278370961,
    -0.002655173095064216,
    -0.001891070645768171,
    -0.001291444409523047,
    -0.000834034055775751,
    -0.000497284187006940,
    -0.000261383834469497,
    -0.000109001586731170,
    -0.000025695329810175,
    0.000000000000000000
]
    filtered = []

    for i in range(len(ylist)):
        outval = 0
        if i > len(taps)-1:
            for t in range(len(taps)):
                outval += ylist[i-t] * taps[len(taps)-1-t]
        filtered.append(outval)

    return filtered

def filter_butterworth(yvals):
    acoeff = [0.9917569521746041,-1.9914840447197506,1]
    bcoeff = [1,-1.9997259630954916,1]
    gain = 1.0041385811739696

    npole = 2
    nzero = 2

    xv = [0,0,0]
    yv = [0,0,0]

    outlist = []

    for v in yvals:
        out = 0
        for i in range(nzero): xv[i]=xv[i+1]
        xv[nzero] = v/gain
        for i in range(npole): yv[i]=yv[i+1]
        for i in range(nzero): out+=xv[i]*bcoeff[i]
        for i in range(npole): out-=yv[i]*acoeff[i]
        yv[npole] = out

        outlist.append(out)

    return outlist

#xvals,yvals = generate_period(10) # generating single period at 60hz
#yvals_f = filter_FIR(yvals)
#plt.plot(xvals,yvals)
#plt.plot(xvals, yvals_f)
#plt.show()
#
#xvals,yvals = generate_period(60) # generating single period at 60hz
#yvals_f = filter_FIR(yvals)
#plt.plot(xvals,yvals)
#plt.plot(xvals, yvals_f)
#plt.show()
#
#
#xvals,yvals = generate_period(1000) # generating single period at 60hz
#yvals_f = filter_FIR(yvals)
#plt.plot(xvals,yvals)
#plt.plot(xvals, yvals_f)
#plt.show()
#
#freqs = list(np.logspace(0,4,20))
#mags = []
#for i in freqs:
#    xvals,yvals = generate_period(i) # generating single period at 60hz
#    yvals_f = filter_FIR(yvals)
#    plt.plot(xvals,yvals)
#    plt.plot(xvals, yvals_f)
#    plt.title(i)
#    plt.show()
#    mags.append(calc_mag(i))
#
#plt.plot(freqs, mags)
#plt.yscale('log')
#plt.xscale('log')
#plt.grid()
#plt.show()

f = open("log_shieldedtiacable.csv")
curr = []

for line in f:
    curr.append(float(line.split(",")[1]))

curr_filtered = filter_FIR(curr)

plt.plot(curr)
plt.plot(curr_filtered)
plt.show()

peaks = []
for i in range(1,len(curr)-1):
    if curr[i] > curr[i-1] and curr[i] > curr[i+1]: peaks.append(i)

for i in range(1,len(peaks)):
    print(peaks[i]-peaks[i-1])

