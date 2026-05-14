-- Create team payroll table
CREATE TABLE IF NOT EXISTS team_payroll (
    team TEXT,
    payroll_M REAL
);

-- Insert payroll data
INSERT INTO team_payroll VALUES
('Panathinaikos AKTOR', 26.75),
('Olympiacos', 22.25),
('Hapoel IBI Tel Aviv', 19.75),
('Real Madrid', 18.75),
('Anadolu Efes', 18.25),
('Dubai', 18.25),
('Fenerbahçe Beko', 16.25),
('Crvena zvezda Meridianbet', 16.25),
('Partizan Mozzart Bet', 14.50),
('Barcelona', 14.50),
('AS Monaco', 13.75),
('EA7 Emporio Armani Milano', 13.75),
('Valencia Basket', 9.50),
('Maccabi Rapyd Tel Aviv', 9.25),
('Bayern München', 9.00),
('Žalgiris', 8.75),
('Baskonia', 8.25),
('Paris Basketball', 8.00),
('Virtus Olidata Bologna', 7.75),
('LDLC ASVEL', 4.75);

-- Rename column
ALTER TABLE standings RENAME COLUMN field1 TO Team;