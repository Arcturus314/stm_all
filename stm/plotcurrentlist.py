# -*- coding: utf-8 -*-
"""
Created on Sun Jan 17 17:25:02 2021

@author: Kaveh Pezeshki
"""

import matplotlib.pyplot as plt

#f = open("lower_piezo_linear.log")
f = open("constant_xy_control_z.log")

current = []

for line in f:
    current.append(float(line.split("\n")[0]))
    
plt.hist(current, bins=100)
plt.show()
    
plt.plot(current)

plt.show()