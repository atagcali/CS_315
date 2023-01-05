workedTime = {["Alp"] = "8 hours", ["Tuna"] = "hours"}
for i,v in pairs(workedTime) do print(i,v) end
print(workedTime["Alp"])
workedTime["Emrehan"] = "8 hours"
for i,v in pairs(workedTime) do print(i,v) end
workedTime["Alp"] = nil
for i,v in pairs(workedTime) do print(i,v) end
workedTime["Tuna"] = "8 hours"
for i,v in pairs(workedTime) do print(i,v) end
print(workedTime["Alp"] ~= nil)
print(workedTime["Tuna"] ~= nil)
function table_contains(tbl, x)
    found = false
    for _, v in pairs(tbl) do
        if v == x then 
            found = true 
        end
    end
    return found
end
print(table_contains(workedTime, "8 hours"))
print(table_contains(workedTime, "hours"))
function foo(key, value)
    print(key, value)
end
for i,v in pairs(workedTime) do foo(i,v) end