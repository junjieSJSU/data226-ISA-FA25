WITH u AS (SELECT * FROM {{ source("raw", "user_session_channel")}}),
s AS (SELECT * FROM {{ source("raw", "session_timestamp")}})
SELECT u.*, s.ts
FROM u JOIN s ON u.sessionId=s.sessionId