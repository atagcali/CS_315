void foo(var input1, var input2){
  print(input1 + " " + input2);
}

void main() {
  var workedTime = {'Alp' : '8 hours', 'Tuna' : 'hours'};
  print(workedTime);
  print(workedTime['Alp']);
  workedTime['Emrehan'] = '8 hours';
  print(workedTime);
  workedTime.remove('Alp');
  print(workedTime);
  workedTime['Tuna'] = '8 hours';
 
  print(workedTime);
  print(workedTime.containsKey('Alp'));
  print(workedTime.containsKey('Tuna'));
  print(workedTime.containsValue('7 hours'));
  print(workedTime.containsValue('8 hours'));
  for(var temp in workedTime.entries){
    foo(temp.key,temp.value);
  }
}
