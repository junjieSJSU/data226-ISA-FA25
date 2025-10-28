WITH u AS (SELECT * FROM {{ ref("user_session_channel_cleaned")}}),
s AS (SELECT * FROM {{ ref("session_timestamp_cleaned")}})
SELECT u.*, s.ts
FROM u JOIN s ON u.sessionId=s.sessionId