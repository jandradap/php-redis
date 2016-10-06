<?php
   //Connecting to Redis server on localhost
   $redis = new Redis();
   $redis->connect('127.0.0.1', 6379);
   echo "<p>Connection to server sucessfully";
   //store data in redis list
   $redis->lpush("capacidad", "Ernesto");
   $redis->lpush("capacidad", "Blanca");
   $redis->lpush("capacidad", "Xanxes");
   $redis->lpush("capacidad", "Fran");
   $redis->lpush("capacidad", "Jorge");
   // Get the stored data and print it
   $arList = $redis->lrange("capacidad", 0 ,5);
   echo "<p>Guardado en redis:: ";
   print_r($arList);
?>

