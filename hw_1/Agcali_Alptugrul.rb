workedTime = {"Alp" => '8 hours', 'Tuna' => 'Hours'}
puts workedTime
puts workedTime['Alp']
workedTime['Emrehan'] = "8 hours"
puts workedTime
workedTime.delete('Alp')
puts workedTime
workedTime['Tuna'] = '8 hours'
puts workedTime
puts workedTime.key?('Alp')
puts workedTime.key?('Emrehan')
puts workedTime.value?('Hours')
puts workedTime.value?('8 hours')
def foo(key, value)
    puts key + ' ' + value
end
workedTime.each { |key, value| foo(key,value) }