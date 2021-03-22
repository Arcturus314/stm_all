# -*- coding: utf-8 -*-
"""
Created on Sat Jan  2 01:07:04 2021

@author: Kaveh Pezeshki
"""

import matplotlib.pyplot as plt
import math


f = open("firstsample_noisy.txt")

xpos_list = []
ypos_list = []
zpos_list = []
current_list = []



print("reading")

for line in f:
    if line != "\n":
        
        stepper,xpos,ypos,zpos,current = line.split("\n")[0].split(",")
        
        #print(stepper,xpos,ypos,zpos,current)
        
        xpos_list.append(float(xpos))
        ypos_list.append(float(ypos))
        zpos_list.append(float(zpos))
        current_list.append(float(current))
        
        
print(len(xpos_list))
        
print("plotting")
plt.title("spatial zpos")
plt.xlabel("x position")
plt.ylabel("y position")
plt.scatter(xpos_list[0:6500], ypos_list[0:6500], c=zpos_list[0:6500], alpha = 0.3, s=5)
plt.colorbar()
plt.ylim(0,100)
plt.show()

plt.title("spatial current")
plt.xlabel("x position")
plt.ylabel("y position")
plt.scatter(xpos_list[0:6500], ypos_list[0:6500], c=current_list[0:6500], alpha = 0.3, s=5)
plt.colorbar()
plt.ylim(0,100)
plt.show()

plt.plot(zpos_list)
plt.xlim([0,6500])
plt.ylim([0,20000])
plt.title("zpos raw")
plt.xlabel("step increment")
plt.show()

plt.plot(current_list)
plt.title("current raw")
plt.xlim([830,900])
plt.show()


print("done")
        
        