-- Teams that depend more on one player
SELECT 
	ps.Team,
	ps.Player,
	ps.PTS AS Top_Scorer_PTS,
	tst.PTS AS Team_PTS,
	ROUND(ps.PTS * 100.0 / tst.PTS, 1) AS Dependency_Pct
FROM player_stats ps
JOIN team_stats_totals tst ON ps.Team = tst.Club
WHERE ps.PTS = (
	SELECT MAX(PTS)
	FROM player_stats ps2
	WHERE ps2.Team = ps.Team
)
ORDER BY Dependency_Pct DESC;

-- More balanced teams that don't depend that much from one player
SELECT 
	ps.Team,
	ps.Player,
	ps.PTS AS Top_Scorer_PTS,
	tst.PTS AS Team_PTS,
	ROUND(ps.PTS * 100.0 / tst.PTS, 1) AS Dependency_Pct
FROM player_stats ps
JOIN team_stats_totals tst ON ps.Team = tst.Club
WHERE ps.PTS = (
	SELECT MAX(PTS)
	FROM player_stats ps2
	WHERE ps2.Team = ps.Team
)
ORDER BY Dependency_Pct ASC;