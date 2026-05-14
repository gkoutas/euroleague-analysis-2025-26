-- =============================================
-- Offense & Defense Analysis
-- =============================================

-- Best Offence
SELECT  standings.Team,
        standings."PS/G",
        ROUND(team_stats_pergame."FG%" * 100, 1) AS "FG%",
        ROUND(team_stats_pergame."3P%" * 100, 1) AS "3P%",
        ROUND(team_stats_pergame."2P%" * 100, 1) AS "2P%",
        ROUND(team_stats_pergame."FT%" * 100, 1) AS "FT%",
        team_stats_pergame.AST
FROM standings
JOIN team_stats_pergame ON standings.Team = team_stats_pergame.Club
ORDER BY standings."PS/G" DESC;

-- Best Defence
SELECT  standings.Team,
        standings."PA/G",
        team_stats_pergame.STL, team_stats_pergame.BLK
FROM standings
JOIN team_stats_pergame ON standings.Team = team_stats_pergame.Club
ORDER BY standings."PA/G" ASC;