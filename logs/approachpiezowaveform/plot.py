import matplotlib.pyplot as plt

f = open("approachpiezowaveformdump.csv")
f.readline()
f.readline()

voltage1 = []
voltage2 = []
voltage3 = []
voltage4 = []

time = []

numlines_des = 1000000
skiplines = 1000


numlines = 0
for line in f:
    for skip in range(skiplines): f.readline()
    t1s, v1s, v2s, v3s, v4s = line.split(",")
    voltage1.append(float(v1s))
    voltage2.append(float(v2s))
    voltage3.append(float(v3s))
    voltage4.append(float(v4s))
    time.append(float(t1s))
    numlines += 1

    if numlines == numlines_des: break

print(len(time))

plt.plot(time, voltage1)
plt.plot(time, voltage2)
plt.plot(time, voltage3)
plt.plot(time, voltage4)

plt.show()

v1v2 = []
v1v3 = []
v1v4 = []
v2v3 = []
v2v4 = []
v3v4 = []

for v1i,v2i in zip(voltage1, voltage2): v1v2.append(v1i-v2i)
for v1i,v3i in zip(voltage1, voltage3): v1v3.append(v1i-v3i)
for v1i,v4i in zip(voltage1, voltage4): v1v4.append(v1i-v4i)

for v2i,v3i in zip(voltage2, voltage3): v2v3.append(v2i-v3i)
for v2i,v4i in zip(voltage2, voltage4): v2v4.append(v2i-v4i)

for v3i,v4i in zip(voltage3, voltage4): v3v4.append(v3i-v4i)

plt.plot(time, v1v2, label = "v1-v2")
plt.plot(time, v1v3, label = "v1-v3")
plt.plot(time, v1v4, label = "v1-v4")

plt.legend()
plt.show()

plt.plot(time, v2v3, label = "v2-v3")
plt.plot(time, v2v4, label = "v2-v4")

plt.plot(time, v3v4, label = "v3-v4")

plt.legend()
plt.show()
