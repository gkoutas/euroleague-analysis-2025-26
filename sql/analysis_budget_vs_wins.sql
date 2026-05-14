-- =============================================
-- Budget vs Performance Analysis
-- =============================================
SELECT  standings.Team, standings.W, standings.L, 
        ROUND(standings."W/L%" * 100, 1) AS "W/L%",
        team_payroll.payroll_M,
        ROUND((standings."W/L%" / team_payroll.payroll_M), 4) AS Value_Score
FROM standings
JOIN team_payroll ON standings.Team = team_payroll.team
ORDER BY Value_Score DESC;