import matplotlib.pyplot as plt

#f = open("log_shieldedtiacable.csv")
f = open("log.csv")

curr = []

for line in f:
    curr.append(float(line.split(",")[0]))

plt.plot(curr)
plt.xlim([0,100])
plt.grid()
plt.show()

# 25 samples @ 50us per current readout
# 3 periods in 40 readouts

# so 40/3 * 25 * 50e-6 = 1.7e-2 seconds / period -> exactly 60Hz noise dominates :(

