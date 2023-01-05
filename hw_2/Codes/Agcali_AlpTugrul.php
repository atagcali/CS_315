<?php
    for($test = 0; $test < 10; $test++){
        echo "test = $test \n";
        if($test == 3) break;
    }
    for($outer = 0; $outer < 10; $outer++){
        echo "outer = $outer \n";
        for($j = 0; $j < 10; $j++){
            if($outer == 2) break;
        }
    }
    echo "---------------------\n";
    for($outer = 0; $outer < 10; $outer++){
        echo "outer = $outer \n";
        for($j = 0; $j < 10; $j++){
            if($outer == 2) break 2;
        }
    }
    
?>