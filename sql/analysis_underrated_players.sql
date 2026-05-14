-- =============================================
-- Underrated Players Analysis
-- =============================================
SELECT 
    Player, Team, G, MP, PTS,
    ROUND(PTS * 1.0 / MP, 2) AS PTS_per_min,
    ROUND(
        (TRB + AST + STL + BLK - TOV) * 1.0 / MP
        , 2) AS Non_Scoring_Contribution
FROM player_stats
WHERE MP > 200
    AND PTS * 1.0 / MP < 0.30
    AND (TRB + AST + STL + BLK - TOV) * 1.0 / MP > 0.25
ORDER BY Non_Scoring_Contribution DESC;