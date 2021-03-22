import matplotlib.pyplot as plt

infile = open("noise50kpoints3.txt")
outfile = open("filtout.txt")
outfilefloat = open("filtout_float.txt")

inpts  = []
outpts = []
outpts_float = []

for line in infile: inpts.append(float(line.split("\n")[0]))
for line in outfile: outpts.append(float(line.split("\n")[0]))
for line in outfilefloat: outpts_float.append(float(line.split("\n")[0]))

plt.plot(inpts)
plt.plot(outpts)
plt.plot(outpts_float)
plt.show()


