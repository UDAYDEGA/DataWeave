%dw 2.0
output application/json
import * from dw::core::Strings
---
payload mapObject ((value, key, index) -> {
    zip: (payload.zipCode substringBefore    "-") as Number,
    pin: (payload.pincode substringAfter  "-") as Number,
    name: payload.name filter ((char, index) -> isAlpha(char) )
 
}) distinctBy ((value, key) -> key )

