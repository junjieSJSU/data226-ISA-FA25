SELECT userId, sessionId, channel, ts, COUNT(*)
FROM {{ ref("session_summary")}}
GROUP BY userId, sessionId, channel, ts
HAVING COUNT(*) > 1