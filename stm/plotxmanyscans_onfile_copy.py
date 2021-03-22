# -*- coding: utf-8 -*-
"""
Created on Sat Jan  2 01:07:04 2021

@author: Kaveh Pezeshki
"""

import matplotlib.pyplot as plt
import math


#f = open("hugelog_unsuccessful_successfulatend_betterscans.txt")
f = open("[Com COM18] (2021-01-17_192919).log", "r")


xpos_lists_forward = []
zpos_lists_forward = []
current_lists_forward = []

xpos_lists_backward = []
zpos_lists_backward = []
current_lists_backward = []



forward_scan_index = 0
backward_scan_index = 0

xpos_list_buffer = []
zpos_list_buffer = []
current_list_buffer = []


# cutting out initial approach
print("reading initial approach")

line = f.readline()
while "SCAN DIR 1 COMPLETE" not in line:
    line = f.readline()


# reading data
print("reading data")

for line in f:
    
    if line != "\n" and line != "STARTING X-ax SCAN\n":
        #print(line)
        
        if "SCAN DIR 1 COMPLETE" in line: # just completed backwards scan, about to print forwards scan
            print("loaded backwards scan")
            xpos_lists_backward.append(xpos_list_buffer)
            zpos_lists_backward.append(zpos_list_buffer)
            current_lists_backward.append(current_list_buffer)
            xpos_list_buffer = []
            zpos_list_buffer = []
            current_list_buffer = []
            
        elif "SCAN DIR 2 COMPLETE" in line: # just completed forwards scan, about to print backwards scan
            print("loaded forwards scan")
            xpos_lists_forward.append(xpos_list_buffer)
            zpos_lists_forward.append(zpos_list_buffer)
            current_lists_forward.append(current_list_buffer)
            xpos_list_buffer = []
            zpos_list_buffer = []
            current_list_buffer = []
            
        else:
            xpos,zpos,current = line.split("\n")[0].split(",")
            
            #print(stepper,xpos,ypos,zpos,current)
            
            xpos_list_buffer.append(float(xpos)/2**16 * 20 * 150e-9)
            zpos_list_buffer.append(float(zpos)/2**16 * 20 * 150e-9)
            current_proc = float(current)*1e-12
            current_list_buffer.append(current_proc)
            
            
print("read data")
        
        
print(len(xpos_lists_forward))
print(len(xpos_lists_backward))


all_xlist = []

all_ylist = []

all_zlist = []

all_zlist_normalized = []

all_currentlist = []

# plotting forward

counter = 0
for xpos_list,zpos_list,current_list, index in zip(xpos_lists_backward, zpos_lists_backward, current_lists_backward, enumerate(xpos_lists_forward)):
    counter += 1
    #print(index[0])
    
    #if 20 < index[0] < 30:
        
    #plt.plot(xpos_list,zpos_list)
    #plt.xlim([3400,3525])
    #plt.ylim([0,20000])
    #plt.title("Profile")
    #plt.xlabel("x position (m)")
    #plt.ylabel("z position (m)")
    #plt.show()
    if counter == 38:
        #f = open("onescan_halfms_maybeatoms.csv","w")
        #for el in current_list:
        #    f.write(str(el) +"\n")
        #plt.plot(xpos_list,current_list)
        plt.plot(range(len(current_list)),current_list)
        plt.title("Current")
        plt.ylabel("current (A)")
        plt.xlabel("x position (m)")
        #plt.xlim([2e-8,2.5e-8])
        plt.xlim(700,850)
        plt.show()   
        #f.close()
        
        # spacing of 20pts @ 1khz ->

    all_xlist += xpos_list
    all_ylist += [counter]*len(xpos_list)
    all_zlist += zpos_list
    all_currentlist += current_list
    
    # generating normalized z list
    
    norm_factor = len(zpos_list)/sum(zpos_list)
    for el in zpos_list:
        all_zlist_normalized.append(el*norm_factor)

print("lengths")
print(len(all_xlist))
print(len(all_ylist))
print(len(all_zlist))
print(len(all_currentlist))

plt.figure(figsize=(7,4))
plt.scatter(all_xlist,all_ylist,c=all_currentlist,s=1)
plt.title("Current vs X Position over 100 1D scans")
plt.xlabel("Estimated X Position (m) (assuming 150nm/V)")
plt.ylabel("Scan Index")
bar = plt.colorbar()
bar.set_label("Current (A)")

plt.show()

plt.figure(figsize=(7,4))
plt.scatter(all_xlist,all_ylist,c=all_zlist_normalized,s=1)
plt.title("Z Position vs X Position over 100 1D scans")
plt.xlabel("Estimated X Position (m) (assuming 150nm/V)")
plt.ylabel("Scan Index")
bar = plt.colorbar()
bar.set_label("Z Position (m)")

plt.show()

    
# plt.plot(xpos_list,current_list)
# plt.title("Current")
# plt.ylabel("current (A)")
# plt.xlabel("x position (m)")
# #plt.xlim([500,600])

# #plt.xlim([830,900])
# plt.show()


print("done")
        
        