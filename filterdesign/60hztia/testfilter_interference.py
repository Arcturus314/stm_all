import matplotlib.pyplot as plt

f = open("log_shieldedtiacable.csv")
curr = []

for line in f:
    curr.append(float(line.split(",")[1]))

out = []
for i in range(14,len(curr)):
    out.append(curr[i]-curr[i-14])

plt.plot(curr)
plt.plot(out)

plt.show()
