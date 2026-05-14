-- =============================================
-- Player Efficiency Analysis (PIR per Minute)
-- =============================================
SELECT Player, Team, G, MP, 
    ROUND(
        (PTS + TRB + AST + STL + BLK - TOV 
        - (FGA - FG)
        - (FTA - FT)) * 1.0 / MP
        , 2) AS Efficiency_per_min
FROM player_stats
WHERE MP > 200
ORDER BY Efficiency_per_min DESC;