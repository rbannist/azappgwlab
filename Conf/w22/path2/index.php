<html><head><title>Server 22</title></head><body><h1 style="color:purple;font-size:300%;">This is Server 22 - Path 2</h1><p>Send next request. If Cookie-based affinity is enabled, clear the cookies to change the backend server.</p><p><strong>Request headers:</strong> <br /><?php $hs = apache_request_headers();foreach($hs as $h => $value){echo "$h: $value <br /> ";}?></p></body></html>