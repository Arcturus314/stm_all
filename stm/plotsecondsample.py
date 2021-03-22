# -*- coding: utf-8 -*-
"""
Created on Sat Jan  2 01:07:04 2021

@author: Kaveh Pezeshki
"""

import matplotlib.pyplot as plt
import math


f = open("thirdsample_crash.txt")

xpos_list = []
ypos_list = []
zpos_list = []
current_list = []



print("reading")

for line in f:
    if line != "\n":
        
        xpos,ypos,zpos,current = line.split("\n")[0].split(",")
        
        #print(stepper,xpos,ypos,zpos,current)
        
        xpos_list.append(float(xpos))
        ypos_list.append(float(ypos))
        zpos_list.append(float(zpos))
        current_list.append(float(current))
        
        
print(len(xpos_list))
        
print("plotting")

plt.title("order")
plt.scatter(xpos_list, ypos_list, c=range(10000))
plt.colorbar()
plt.show()

plt.title("zpos")
plt.scatter(xpos_list, ypos_list, c=zpos_list, alpha = 0.3, s=5)
plt.ylim(0,100)
plt.colorbar()
plt.show()

plt.title("spatial current")
plt.scatter(xpos_list, ypos_list, c=current_list, alpha = 0.3, s=5)
plt.ylim(0,100)
plt.colorbar()
plt.xlabel("x position")
plt.ylabel("y position")
plt.show()

plt.plot(zpos_list)
plt.xlim([3900,4100])
plt.ylim([522000,525000])
plt.title("zpos raw")
plt.show()

fig, ax1 = plt.subplots()
ax2 = ax1.twinx()
ax1.plot(current_list, c="blue", label = "current")
ax2.plot(ypos_list, c="red", label = "position")
plt.legend()
plt.title("current raw")
plt.xlim([3950,4050])
plt.show()

#plt.plot(zpos_list, current_list)
#plt.show()


print("done")
        
        