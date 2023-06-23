--- 1. List the names of all left-handed batsmen from England. Order the results alphabetically. [2 marks]
SELECT
    Player_Name
FROM
    Player
    LEFT JOIN Country ON Country.Country_Id = Player.Country_Name
    LEFT JOIN Batting_Style ON Batting_Style.Batting_Id = Player.Batting_hand
WHERE
    Batting_Style.Batting_hand = 'Left-hand bat'
    AND Country.Country_Name = 'England'
ORDER BY
    Player_Name;

--- 2. List the names and age (in years, should be integer) as on 2018-12-02 (12th Feb, 2018) 
---    of all bowlers with skill “Legbreak googly” who are 28 or more in age. Order the result in decreasing order of their ages. 
---    Resolve ties alphabetically. (<player name, player age>) [2 marks]
SELECT
    Player_Name,
    '2018-02-12' - DOB AS Age
FROM
    Player p
    LEFT JOIN Bowling_Style b ON b.Bowling_Id = p.Bowling_skill
WHERE
    ('2018-02-12' - DOB) > 28
    AND b.Bowling_skill = 'Legbreak googly'
ORDER BY
    Age DESC;

--- 3. List the match ids and toss winning team IDs where the toss winner of a match decided to bat first. 
---    Order result in increasing order of match ids. (<match id, toss winner>) [2 marks]
SELECT
    Match_Id,
    Toss_Winner
FROM
    MATCH
WHERE
    Toss_Decide = 2;

--- 4. In the match with match id 335987, list the over ids and runs scored where at most 7 runs were scored. 
---    Order the over ids in decreasing order of runs scored. (<over id, runs scored>)[2 marks]
SELECT
    Over_Id,
    Sum(Runs_Scored) Runs_Scored
FROM
    Batsman_Scored
WHERE
    Match_Id = 335987
GROUP BY
    Over_Id
HAVING
    Sum(Runs_Scored) > 7
ORDER BY
    Sum(Runs_Scored) DESC;

--- 5. List the names of those batsmen who were bowled at least once and order them by no of times they bowled. () [2 marks]
SELECT
    Player_Name,Count(Out_Name) Bowled_no
FROM
    Wicket_Taken
    LEFT JOIN Player ON Player_Id=Player_Out
    LEFT JOIN Out_Type ON Out_Id=Kind_Out
WHERE Out_Name ='bowled'
GROUP BY Player_Name
ORDER BY Bowled_no DESC;

--- 6. List all the match ids along with the names of teams participating (team 1, team 2), 
---    name of the wining team, and win margin where the win margin is at least 60 runs, in increasing order of win margin.
---    (<match id, team 1, team 2, winning team name, win margin>) [2 marks]
SELECT
    Match_Id,
    t1.Team_Name AS H_team,
    t2.Team_Name AS A_team,
    t3.Team_Name AS Match_Winner,
    Win_Margin
FROM
    MATCH
    LEFT JOIN Team AS t1 ON t1.Team_Id = MATCH.Team_1
    LEFT JOIN Team AS t2 ON t2.Team_Id = MATCH.Team_2
    LEFT JOIN Team AS t3 ON t3.Team_Id = MATCH.Match_Winner
WHERE
    Win_Type = 1
    AND Win_Margin >= 60
ORDER BY
    Win_Margin ASC;

--- 7. List the names of all left handed batsmen below 30 years of age as on 2018-12-02 (12th Feb, 2018) alphabetically. () [2 marks]
SELECT
    Player_Name
FROM
    Player
    LEFT JOIN Batting_Style ON Batting_Style.Batting_Id = Player.Batting_hand
WHERE
    Batting_Style.Batting_hand = 'Left-hand bat'
    AND ('2018-02-12' - DOB) < 30
ORDER BY
    Player_Name;

--- 8. List the match wise total for the entire series. The output should be match id, total runs. 
---    Return the results in increasing order of match ids. (<match id, total runs>) [2 marks]
SELECT
    a.Match_Id,
    Runs_Scored + Extra_Runs AS Total_runs
FROM
    (
        SELECT
            Match_Id,
            Sum(Runs_Scored) Runs_Scored
        FROM
            Batsman_Scored
        GROUP BY
            Match_Id
    ) a
    LEFT JOIN (
        SELECT
            Match_Id,
            Sum(Extra_Runs) Extra_Runs
        FROM
            Extra_Runs
        GROUP BY
            Match_Id
    ) b ON a.Match_Id = b.Match_Id
GROUP BY
    a.Match_Id;

--- 9. For each match id, list the maximum runs scored in any over and the bowler bowling in that over. 
---    If there is more than one over having maximum runs, return all of them and order them in increasing order of over id. 
---    Order results in increasing order of match ids. (<match id, maximum runs, player name>) [3 marks]

SELECT
    Match_Id,
    Max_Run,
    Player_Name
FROM
    (
        SELECT
            a.Match_Id Match_Id,
            a.Over_Id Over_Id,
            Sum(Runs_Scored) Max_Run,
            Row_number() Over (
                PARTITION BY a.Match_Id
                ORDER BY
                    Sum(Runs_Scored) DESC
            ) AS rank,
            Bowler,
            Player_Name
        FROM
            Batsman_Scored a
            LEFT JOIN (
                SELECT
                    Match_Id,
                    Over_Id,
                    Bowler
                FROM
                    Ball_by_Ball
                GROUP BY
                    Match_Id,
                    Over_Id
            ) b ON a.Match_Id = b.Match_Id
            AND a.Over_Id = b.Over_Id
            LEFT JOIN Player ON Player_Id = Bowler
        GROUP BY
            a.Match_Id,
            a.Over_Id
        ORDER BY
            a.Match_Id ASC,
            Runs_Scored DESC
    )
WHERE
    rank = 1
ORDER BY
    Match_Id ASC;

--- 10. List the names of batsmen and the number of times they have been “run out” in decreasing order of being “run out”. 
---     Resolve this alphabetically. (<player name, number>) [2 mark]
SELECT
    Player_Name,
    Count(Player_Out) Run_Outs
FROM
    Wicket_Taken
    LEFT JOIN Out_Type ON Out_Id = Kind_Out
    LEFT JOIN Player ON Player_Id = Player_Out
WHERE
    Out_Name = 'run out'
GROUP BY
    Player_Out
ORDER BY
   Run_Outs DESC;

--- 11. List the number of times any batsman has got out for any out type. 
---     Return results in decreasing order of the numbers. Resolve ties alphabetically (on the out type name). (<out type, number>) 
--    * Let's do it for AB de Villiers

SELECT
    Out_Name,
    Count(Kind_Out) number
FROM
    Wicket_Taken
    LEFT JOIN Player ON Player_Out = Player_Id
    LEFT JOIN Out_Type ON Out_Id = Kind_Out
WHERE
    Player_Name = 'AB de Villiers'
GROUP BY
    Player_Out,
    Kind_Out
ORDER BY
    number DESC;

--- 12. List the team name and the number of times any player from the team has received man of the match award. 
---     Order results alphabetically on the name of the team. (<name, number>) [2 marks]
SELECT
    Team_Name,
    Count(Man_of_the_Match) Total_MOM
FROM
    Player_Match a
    LEFT JOIN MATCH b ON a.Match_Id = b.Match_Id
    AND b.Man_of_the_Match = Player_Id
    LEFT JOIN Team USING (Team_Id)
GROUP BY
    Team_Id
ORDER BY
    Team_Name;

--- 13. Find the venue where the maximum number of wides have been given. In case of ties, 
---     return the one that comes before in alphabetical ordering. Output should contain only 1 row. () [2 marks]
SELECT
    Venue_Name
FROM
    Extra_Runs e
    LEFT JOIN Extra_Type ON Extra_Id = Extra_Type_Id
    LEFT JOIN MATCH m ON m.Match_Id = e.Match_Id
    LEFT JOIN Venue v ON v.Venue_Id = m.Venue_Id
WHERE
    Extra_Name = 'wides'
GROUP BY
    Venue_Name
ORDER BY
    Sum(Extra_Runs) DESC
LIMIT
    1;

--- 14. Find the venue(s) where the team bowling first has won the match. If there are more than 1 venues, 
---     list all of them in order of the number of wins (by the bowling team). Resolve this alphabetically. () [3 marks]
SELECT
    Venue_Name,
    count(Team_Bowling) number
FROM
    (
        SELECT
            Team_Bowling,
            Venue_Name
        FROM
            MATCH b
            LEFT JOIN Ball_by_Ball a ON a.Match_Id = b.Match_Id
            AND Team_Bowling = Match_Winner
            LEFT JOIN Venue v ON b.Venue_Id = v.Venue_Id
        WHERE
            Innings_No = 1
        GROUP BY
            b.Match_Id
    )
GROUP BY
    Venue_Name
ORDER BY
    count(Team_Bowling) DESC
LIMIT
    1;

--- 15. Find the bowler who has the best average overall. Bowling average is calculated using the following formula:
---  				bowling average = Total runs given/  Number of wickets taken
---  Calculate the average upto 3 decimal places and return the bowler with the lowest average runs per wicket. 
---  In case of tie, return the results in alphabetical order. (<player name>) [4 marks]
SELECT
    a.Player_Name,
    a.Total_wicket,
    Total_Runs,
    Round(CAST(Total_Runs AS real) / a.Total_wicket, 3) AS bowling_average
FROM
    Total_WKT_Taken_by_Bowler a
    LEFT JOIN Total_Runs_Conced_by_Bowler b ON a.Player_Name = b.Player_Name
ORDER BY
    a.Total_wicket DESC;

--- 16. List the players and the corresponding teams where the player played as “CaptainKeeper” and won the match. 
---     Order results alphabetically on the player’s name. (<player name, name>) [3 marks]
SELECT
    DISTINCT Player_Name,
    Team_Name
FROM
    (
        SELECT
            Match_Id,
            Player_Name,
            a.Team_Name,
            t.Team_Name AS Match_Winner
        FROM
            Player_Match
            LEFT JOIN Rolee USING (Role_Id)
            LEFT JOIN Team a USING (Team_Id)
            LEFT JOIN Player USING (Player_Id)
            LEFT JOIN MATCH USING (Match_Id)
            LEFT JOIN Team t ON t.Team_Id = MATCH.Match_Winner
        WHERE
            Role_Desc = 'CaptainKeeper'
    )
WHERE
    Team_Name = Match_Winner
ORDER BY
    Player_Name;

--- 17. List the names of all players and their runs scored (who have scored at least 50 runs in any match). 
---     Order result in decreasing order of runs scored. Resolve ties alphabetically. (<player name, runs scored>) [2 marks]
SELECT
    Player_Name,
    Sum(Runs_Scored) Runs
FROM
    Ball_by_Ball a
    LEFT JOIN Batsman_Scored b ON a.Match_Id = b.Match_Id
    AND a.Innings_No = b.Innings_No
    AND a.Over_Id = b.Over_Id
    AND a.Ball_Id = b.Ball_Id
    LEFT JOIN Player ON Player_Id = Striker
GROUP BY
    a.Match_Id,
    Striker
HAVING
    Sum(Runs_Scored) > 50
ORDER BY
    Sum(Runs_Scored) DESC;

--- 18. List the player names who scored a century but their teams lost the match. Order results alphabetically. 
---     (<player name>) [3 marks]
SELECT
    Player_Name
FROM
    Ball_by_Ball a
    LEFT JOIN Batsman_Scored b ON a.Match_Id = b.Match_Id
    AND a.Innings_No = b.Innings_No
    AND a.Over_Id = b.Over_Id
    AND a.Ball_Id = b.Ball_Id
    LEFT JOIN Player c ON c.Player_Id = Striker
    LEFT JOIN MATCH d ON d.Match_Id = a.Match_Id
WHERE
    Team_Bowling = Match_Winner
GROUP BY
    a.Match_Id,
    Striker
HAVING
    Sum(Runs_Scored) >= 100
ORDER BY
    Sum(Runs_Scored) DESC;

--- 19. List match ids and venues where KKR has lost the game. Order result in increasing order of match ids.
---    (<match id, venue>) [3 marks]
SELECT
    Match_Id,
    Venue_Name
FROM
    MATCH
    LEFT JOIN Venue USING(Venue_Id)
WHERE
    Team_1 = 1
    OR Team_2 = 1
    AND Match_Winner <> 1;
--  * (By general obsarvation we can easly Find that KKT team_id is 1.)

--- 20. List the names of top 10 players who have the best batting average in season 5.
---     Batting average can be calculated according to the following formula:
---     batting average(player) = Number of runs scored by player/ Number of matches player has batted in [2 marks]
---     The output should contain exactly 10 rows. Report results upto 3 decimal places. Resolve this alphabetically. 
---     (<player name>) [4 marks]
SELECT
    Player_Name
FROM
    Ball_by_Ball a
    LEFT JOIN Batsman_Scored b ON a.Match_Id = b.Match_Id
    AND a.Innings_No = b.Innings_No
    AND a.Over_Id = b.Over_Id
    AND a.Ball_Id = b.Ball_Id
    LEFT JOIN Player c ON c.Player_Id = Striker
    LEFT JOIN MATCH d ON d.Match_Id = a.Match_Id
Where Season_Id=5
GROUP BY
    Striker
ORDER BY
    Round(CAST(Sum(Runs_Scored) as real)/Count(DISTINCT a.Match_Id),3) DESC
Limit 10;

--- 21. Using the formula provided in the previous query, find out the batting average of all players across all seasons. 
---     The batting average of a country X is:
---     country batting average = 􏰀 Summationover n, n ∈ player-of-country-X [ batting average(n)/ |player of country X| ] [3 marks]
---     List the top 5 countries with the highest country batting average. Report results upto 3 decimal places. 
---     Output may contain 5 or more rows. Resolve this alphabetically. (<country name>) [4 marks]
SELECT
    Country_Name,
    Round(AVG(Batting_AVG), 2) AS country_batting_average
FROM
    (
        SELECT
            e.Country_Name AS Country_Name,
            Round(
                CAST(Sum(Runs_Scored) AS real) / Count(DISTINCT a.Match_Id),
                3
            ) AS Batting_AVG
        FROM
            Ball_by_Ball a
            LEFT JOIN Batsman_Scored b ON a.Match_Id = b.Match_Id
            AND a.Innings_No = b.Innings_No
            AND a.Over_Id = b.Over_Id
            AND a.Ball_Id = b.Ball_Id
            LEFT JOIN Player c ON c.Player_Id = Striker
            LEFT JOIN MATCH d ON d.Match_Id = a.Match_Id
            LEFT JOIN Country e ON c.Country_Name = e.Country_Id
        GROUP BY
            Striker
        ORDER BY
            Round(
                CAST(Sum(Runs_Scored) AS real) / Count(DISTINCT a.Match_Id),
                3
            ) DESC
    )
GROUP BY
    Country_Name
ORDER BY
    country_batting_average DESC
LIMIT
    5;