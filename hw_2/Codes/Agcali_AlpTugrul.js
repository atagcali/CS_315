for(var test = 0; test < 10; test++){
    console.log("test = " + test);
    if(test === 3) break;
}

for( var outer = 0 ; outer < 10; outer++ ) { 
    console.log("outer = " +outer);
    for(var j = 0; j < 10; j++){
        if(outer===2) break;
    }
}
console.log("--------------------");
label:
for( var outer = 0 ; outer < 10; outer++ ) { 
    console.log("outer = " +outer);
    for(var j = 0; j < 10; j++){
        if(outer===2) break label;
    }
}
