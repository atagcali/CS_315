<?php
$workedHour = array("Alp"=>"8 Hours", "Tuna"=>"Hours");
print_r($workedHour);
echo $workedHour["Alp"], "\n";
$workedHour["Emrehan"] = "8 Hours";
print_r($workedHour);
unset($workedHour['Alp']);
print_r($workedHour);
$workedHour["Tuna"] = "8 Hours";
print_r($workedHour);
if (array_key_exists("Alp", $workedHour)){
    echo "true", "\n";
}
else {
    echo "false", "\n";
}
if (array_key_exists("Tuna", $workedHour)){
    echo "true", "\n";
}
else {
    echo "false", "\n";
}
if (in_array("hours", $workedHour)){
    echo "true", "\n";
}
else {
    echo "false", "\n";
}
if (in_array("8 Hours", $workedHour)){
    echo "true", "\n";
}
else {
    echo "false", "\n";
}
function foo($key, $value) {
  echo $key, " ", $value, "\n";
}
foreach ($workedHour as $person => $time){ 
    foo($person, $time); 
} 
?>
