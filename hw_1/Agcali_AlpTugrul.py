workedTime = {"Alp" : "8 hours", 'Tuna' : 'hours'}
print(workedTime)
print(workedTime['Alp'])
workedTime['Emrehan'] = '8 hours'
print(workedTime)
workedTime.pop('Alp')
print(workedTime)
workedTime.update({'Tuna' : '8 hours'})
print(workedTime)
print('Alp' in workedTime)
print('Tuna' in workedTime)
print('hours' in workedTime.values())
print('8 hours' in workedTime.values())
def foo(input1, input2):
    print(input1 + " " + input2)
for key, value in workedTime.items():
    foo(key, value)
