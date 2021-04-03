<?php
$response = file_get_contents('https://dns.google/resolve?name=_esni.cloudflare.com&type=TXT');
//Attempt to decode the incoming RAW post data from JSON.
$arr = json_decode($response, true);
$answer_array=$arr[Answer][0][data];
echo $answer_array;
?>