# Online Ruby Compiler (Interpreter)
for test in 1..10 do
 print "test = ",test,"\n"
 if test == 3 
     break 
 end
end

for outer in 1..10 do
    print "outer = ", outer,"\n"
    for j in 1..10 do
        if outer == 3
            break
        end
    end
end

puts "------------"
catch :label do
    for outer in 1..10 do
        print "outer = ", outer,"\n"
        for j in 1..10 do
            throw :label if outer == 3
        end
    end
end
catch :loop do
    i = 0
    print "i = ", i, "\n"
    
    throw :loop if i == 10
end





