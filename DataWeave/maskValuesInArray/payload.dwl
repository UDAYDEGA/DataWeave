%dw 2.0
output application/json
import * from dw::core::Strings
import * from dw::util::Values
---
payload mask  field("SSN") with ("***-**-" ++ ($ substringAfterLast  "-"))
// {
//     payload : payload.payload map ((item, index) -> 
//     item  update {
//         case .Account.SSN -> ("***-**-") ++ (item.Account.SSN substringAfterLast  "-" )
//     })
// }

