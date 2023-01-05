
void main() {
  for(var test = 0; test < 10; test++){
    print("test = $test");
    if(test==3) break;
  }
  
  for( var outer = 0 ; outer < 10; outer++ ) { 
    print("outer = $outer");
    for(var j = 0; j <10; j++){
       if(outer==2) break;      
    }
  }
  print("---------------");
  label:
  for( var outer = 0 ; outer < 10; outer++ ) { 
    print("outer = $outer");
    for(var j = 0; j <10; j++){
       if(outer==2) break label;      
    }
  } 
}