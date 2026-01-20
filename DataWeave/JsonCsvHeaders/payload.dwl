%dw 2.0
output application/json
var a = payload.headers
---
payload.csv splitBy  "\n" map ((item, index) -> 
a map ((head, index1) -> (head ) :  (item splitBy  "," )[index1]) reduce ($$++$) )

