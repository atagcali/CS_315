var workedTime = {"Alp": '8 hours', "Tuna": "hours"};
console.log(workedTime);
console.log(workedTime.Alp);
workedTime.Emrehan = "8 hours";
console.log(workedTime);
delete workedTime["Alp"]
console.log(workedTime);
workedTime.Tuna = "8 hours";
console.log(workedTime);
console.log("Alp" in workedTime);
console.log("Tuna" in workedTime);
function containsValue(array, value) {
    for (var key in array) {
        if(array[key] === value);
            return true;
    }
    return false;
}
console.log(containsValue(workedTime, "hours"));
console.log(containsValue(workedTime, "8 hours"));
function foo(key, value){
    console.log(key + " " + value);
}
for(var key in workedTime){
    foo(key, workedTime[key]);
}

