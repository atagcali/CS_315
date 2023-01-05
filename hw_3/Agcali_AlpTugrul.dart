void main() {
  // first part
  void printOuter(var n) {
    var a = n;
    
    void sub(){
      print(a);
    }
    
    sub();
  }

  // Call the nested function
  printOuter("called sub");
print("");
//second part
var a = "outer scope";

print(a); 

void printStr() {

var a = "inner scope";

print(a); // 
}
  printStr();
print (a);
print("\n");
// third part and fourth part parameter passing and keyword and deffault value
// with named parameters
void printStr1(String brand, {String model = "i8",String year = "2021"}) {
print("car: $brand  $model $year");
}
print("named parameter ");
printStr1( 'BMW',year: "x6", model: '2018');
 print("default parameter ");
printStr1('mercedes');
print("\n");
 // last part closures
print("closure declaration");
var str2 = (String a, String b) => a + b;
var res = str2(" one ", " two "); // Call a closure.
print('Result = $res');
// second closure
Function(String a) concat = (String a){
return a+" third";
};
print("using closure as a parameter");
// using closure as a variable in divide closure
print( concat(str2("1 "," 2 ")));
}