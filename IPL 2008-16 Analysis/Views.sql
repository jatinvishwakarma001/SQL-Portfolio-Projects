--- Total_Runs_Conced_by_Bowler
    CREATE VIEW Total_Runs_Conced_by_Bowler AS
    SELECT
        Player_Name,
        Sum(Total_Runs) AS Total_Runs
    FROM
        (
            SELECT
                Player_Name,
    (Coalesce(Extra_Runs, 0) + Runs_Scored) Total_Runs
            FROM
                (
                    SELECT
                        Match_Id,
                        Over_Id,
                        Bowler,
                        Innings_No
                    FROM
                        Ball_by_Ball
                    GROUP BY
                        Innings_No,
                        Over_Id,
                        Match_Id
                    ORDER BY
                        Match_Id,
                        Innings_No,
                        Over_Id
                ) a
                LEFT JOIN (
                    SELECT
                        Match_Id,
                        Over_Id,
                        Sum(Extra_Runs) AS Extra_Runs,
                        Innings_No
                    FROM
                        Extra_Runs
                    GROUP BY
                        Over_Id,
                        Innings_No,
                        Match_Id
                    ORDER BY
                        Match_Id,
                        Innings_No,
                        Over_Id
                ) b ON a.Match_Id = b.Match_Id
                AND a.Over_Id = b.Over_Id
                AND a.Innings_No = b.Innings_No
                LEFT JOIN (
                    SELECT
                        Match_Id,
                        Innings_No,
                        Over_Id,
                        Sum(Runs_Scored) AS Runs_Scored
                    FROM
                        Batsman_Scored
                    GROUP BY
                        Over_Id,
                        Innings_No,
                        Match_Id
                    ORDER BY
                        Match_Id,
                        Innings_No,
                        Over_Id
                ) c ON a.Match_Id = c.Match_Id
                AND a.Over_Id = c.Over_Id
                AND a.Innings_No = c.Innings_No
                LEFT JOIN Player ON Player_Id = Bowler
        )
    GROUP BY
        Player_Name;

--- Platoff VIEW
    CREATE VIEW Playoffs AS
    SELECT
        row_num,Team,Match_Winner,year
    FROM
        (
            SELECT
        Match_Id,row_num, Team_1 as Team,Match_Winner,strftime('%Y', Match_Date) as 'year'
    FROM
        (
            SELECT
    Match_Id,ROW_NUMBER() OVER (PARTITION BY strftime('%Y', Match_Date) ORDER BY Match_Date DESC) AS row_num,
    Team_1,Team_2,Match_Winner,Match_Date
    FROM 
        Match
        )
    WHERE
        CASE
            WHEN strftime('%Y', Match_Date) = '2008' OR strftime('%Y', Match_Date) = '2009' THEN row_num <= 3
            ELSE row_num <= 4
        END
    UNION
    SELECT
        Match_Id,row_num, Team_2 as Team,Match_Winner,strftime('%Y', Match_Date) as 'year'
    FROM
        (
            SELECT
    Match_Id,ROW_NUMBER() OVER (PARTITION BY strftime('%Y', Match_Date) ORDER BY Match_Date DESC) AS row_num,
    Team_1,Team_2,Match_Winner,Match_Date
    FROM 
        Match
        )
    WHERE
        CASE
            WHEN strftime('%Y', Match_Date) = '2008' OR strftime('%Y', Match_Date) = '2009' THEN row_num <= 3
            ELSE row_num <= 4
        END
        )
    ORDER BY year asc,row_num ASC;

---  Group Stage
    CREATE VIEW Group_Stage AS
    SELECT
        row_num,Team,Match_Winner,year
    FROM
        (
            SELECT
        Match_Id,row_num, Team_1 as Team,Match_Winner,strftime('%Y', Match_Date) as 'year'
    FROM
        (
            SELECT
    Match_Id,ROW_NUMBER() OVER (PARTITION BY strftime('%Y', Match_Date) ORDER BY Match_Date DESC) AS row_num,
    Team_1,Team_2,Match_Winner,Match_Date
    FROM 
        Match
        )
    WHERE
        CASE
            WHEN strftime('%Y', Match_Date) = '2008' OR strftime('%Y', Match_Date) = '2009' THEN row_num > 3
            ELSE row_num > 4
        END
    UNION
    SELECT
        Match_Id,row_num, Team_2 as Team,Match_Winner,strftime('%Y', Match_Date) as 'year'
    FROM
        (
            SELECT
    Match_Id,ROW_NUMBER() OVER (PARTITION BY strftime('%Y', Match_Date) ORDER BY Match_Date DESC) AS row_num,
    Team_1,Team_2,Match_Winner,Match_Date
    FROM 
        Match
        )
    WHERE
        CASE
            WHEN strftime('%Y', Match_Date) = '2008' OR strftime('%Y', Match_Date) = '2009' THEN row_num > 3
            ELSE row_num > 4
        END
        )
    ORDER BY year asc,row_num ASC;

---  Player's role view
    CREATE VIEW Player_Role AS 
    SELECT
        Player_Id,Role_Id
    FROM
        Player_Match 
    GROUP BY
        Player_Id ;

--- Total_WKT_Taken_by_Bowler
    CREATE VIEW Total_WKT_Taken_by_Bowler AS
    SELECT
        Player_Name,
        Count(Player_Out) Total_wicket
    FROM
        Wicket_Taken w
        LEFT JOIN Ball_by_Ball b ON w.Match_Id = b.Match_Id
        AND w.Over_Id = b.Over_Id
        AND w.Ball_Id = b.Ball_Id
        AND w.Innings_No = b.Innings_No
        LEFT JOIN Player ON Player_Id = Bowler
    WHERE
        Kind_Out NOT IN (3, 5, 9)
    GROUP BY
        Player_Name
    ORDER BY
        Count(Player_Out) DESC;

 