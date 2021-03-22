# -*- coding: utf-8 -*-
"""
Created on Sun Jan 17 17:06:53 2021

@author: Kaveh Pezeshki
"""

logfile = open("[Com COM18] (2021-01-17_160517).log", "r")

letters = ["a","b","c","d","e","f","g","h","i","."]

datatype = "approach"

initialretractlist = []

tipconstantlist = []

tipcontrolledlist = []

for line in logfile:
    dataline = True
    for letter in letters:
        if letter in line:
            dataline = False
    if dataline == False:
        print(line)
        
    if "retracting piezos from" in line:
        datatype = "piezoretract_inprogress"
        continue
    
    if "retracted piezos. Dumping data" in line:
        datatype = "piezoretract_done"
        
        # process this data
        
        continue
        

