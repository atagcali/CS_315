for test in range (10):
    print ("test = ", test)
    if(test == 3): break

for outer in range (10):
    print ("outer = ", outer)
    for j in range (10):
        if(outer == 2): break
    
print("----------------")
breakOut = False
for outer in range (10):
    print ("outer = ", outer)
    for j in range (10):
        if(outer == 2): 
            breakOut = True
            break
    if breakOut:
        break