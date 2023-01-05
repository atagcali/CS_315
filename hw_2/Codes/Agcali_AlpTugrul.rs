fn main() {
    for test in 1..10 {
        println!("test = {}", test);
        if test == 3{
            break;
        }
    }
    for outer in 1..10 {
        println!("outer = {}", outer);
        for j in 1..5 {
            if outer == 3{
                break;
            }
        }
    }
    println!("---------------");
    'label: for outer in 1..10 {
        println!("outer = {}", outer);
        for j in 1..5 {
            if outer == 3{
                break 'label;
            }
        }
    }
}
