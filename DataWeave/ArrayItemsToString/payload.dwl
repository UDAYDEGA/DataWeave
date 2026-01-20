%dw 2.0
output application/json
---
payload map ((item, index) -> item pluck ((value, key, index) -> key ++ " " ++ value) joinBy  " ") joinBy  " "




