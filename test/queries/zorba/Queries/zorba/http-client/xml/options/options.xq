import module namespace http = "http://www.zorba-xquery.com/modules/http-client";
let $uri := "http://zorbatest.lambda.nu:8080/http-test-data/http1.xml"
for $method in http:options( $uri )
order by $method
return $method
