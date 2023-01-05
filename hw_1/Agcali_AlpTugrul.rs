use std::collections::HashMap;
fn foo(key: &str, val: &str){
    println!("{} {}", key, val);
}
fn main() {
    let mut workedTime=HashMap::new();
    workedTime.insert("Alp", "8 hours");
    workedTime.insert("Tuna", "hours");
    println!("{:?}",workedTime);
    println!("{:?}", workedTime.get(&"Alp"));
    workedTime.insert("Emrehan", "8 hours");
    println!("{:?}",workedTime);
    workedTime.remove(& "Alp");
    println!("{:?}",workedTime);
    workedTime.insert("Tuna","8 hours"); 
    println!("{:?}",workedTime);
    println!("{:?}", workedTime.contains_key( & "Alp"));
    println!("{:?}", workedTime.contains_key( & "Tuna"));
    println!("{:?}", workedTime.values().any(|&val| val == "8 hours"));
    println!("{:?}", workedTime.values().any(|&val| val == "hours"));
    for (key, val) in workedTime.iter() {
        foo(key,val);
    }
}