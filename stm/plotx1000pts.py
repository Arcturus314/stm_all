# -*- coding: utf-8 -*-
"""
Created on Sat Jan  2 01:07:04 2021

@author: Kaveh Pezeshki
"""

import matplotlib.pyplot as plt
import math


f = open("xaxscan8.txt")

xpos_list = []
zpos_list = []
current_list = []



print("reading")

for line in f:
    if line != "\n":
        
        xpos,zpos,current = line.split("\n")[0].split(",")
        
        #print(stepper,xpos,ypos,zpos,current)
        
        xpos_list.append(float(xpos)/2**16 * 20 * 150e-9)
        zpos_list.append(float(zpos)/2**16 * 20 * 150e-9)
        current_list.append(float(current)*1e-12)
        
        
print(len(xpos_list))
        
print("plotting")

plt.plot(xpos_list,zpos_list)
#plt.xlim([3400,3525])
#plt.ylim([0,20000])
plt.title("Profile")
plt.xlabel("x position (m)")
plt.ylabel("z position (m)")
plt.show()

plt.plot(xpos_list,current_list)
plt.title("Current")
plt.ylabel("current (A)")
plt.xlabel("x position (m)")
#plt.xlim([500,600])

#plt.xlim([830,900])
plt.show()

plt.scatter(zpos_list,current_list, marker="+")
plt.show()


print("done")
        
        