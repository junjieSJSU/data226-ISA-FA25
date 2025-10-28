SELECT *
FROM {{ source("raw", "session_timestamp")}}