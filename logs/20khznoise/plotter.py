import matplotlib.pyplot as plt


f = open("noise50kpoints.txt")

noisevals = []

for line in f:
    noisevals.append(int(line.split("\n")[0]))


plt.plot(noisevals)
plt.ylabel("current (pA)")
plt.show()
