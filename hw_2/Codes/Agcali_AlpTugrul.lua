for test = 0,10,1 
do 
   print("test = ", test) 
   if(test==3) then break end
end

for outer = 0, 10, 1
do
    print("outer = ", outer)
    for j = 0, 10, 1
    do
        if(outer == 2) then break end
    end
end
 print("---------------")

for outer = 0, 10, 1
do
    print("outer = ", outer)
    for j = 0, 10, 1
    do
        if(outer == 2) then goto done end
    end
end
::done::
goto skip
print("Does not skipped")
::skip::
