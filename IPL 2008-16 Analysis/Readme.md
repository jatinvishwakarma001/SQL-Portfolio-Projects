# IPL 2008-2016 SQL Project
This project utilizes the IPL 2008-2016 dataset to answer various questions using SQL queries. The dataset contains information about matches, players, teams, and statistics related to the Indian Premier League (IPL) matches held between 2008 and 2016.

## Questions

1. List the names of all left-handed batsmen from England. Order the results alphabetically. (< player name >) [2 marks]
2. List the names and age (in years, should be integer) as on 2018-12-02 (12th Feb, 2018) of all bowlers with skill “Legbreak googly” who are 28 or more in age. Order the result in decreasing order of their ages. Resolve ties alphabetically. (<player name, player age>) [2 marks]
3. List the match ids and toss winning team IDs where the toss winner of a match decided to bat first. Order result in increasing order of match ids. (<match id, toss winner>) [2 marks]
4. In the match with match id 335987, list the over ids and runs scored where at most 7 runs were scored. Order the over ids in decreasing order of runs scored. Resolve ties by listing the over ids in increasing order. (<over id, runs scored>)[2 marks]
5. List the names of those batsmen who were bowled at least once in alphabetical order of their names. (<player name>) [2 marks]
6. List all the match ids along with the names of teams participating (team 1, team 2), name of the wining team, and win margin where the win margin is at least 60 runs, in increasing order of win margin. Re- solve ties by listing the match ids in increasing order. (<match id, team 1, team 2, winning team name, win margin>) [2 marks]
7. List the names of all left handed batsmen below 30 years of age as on 2018-12-02 (12th Feb, 2018) alphabetically. (<player name>) [2 marks]
8. List the match wise total for the entire series. The output should be match id, total runs. Return the results in increasing order of match ids. (<match id, total runs>) [2 marks]
9. For each match id, list the maximum runs scored in any over and the bowler bowling in that over. If there is more than one over having maximum runs, return all of them and order them in increasing order of over id. Order results in increasing order of match ids. (<match id, maximum runs, player name>) [3 marks]
10. List the names of batsmen and the number of times they have been “run out” in decreasing order of being “run out”. Resolve ties alphabetically. (<player name, number>) [2 marks]
11. List the number of times any batsman has got out for any out type. Return results in decreasing order of the numbers. Resolve ties alphabetically (on the out type name). (<out type, number>) [2 marks]
12. List the team name and the number of times any player from the team has received man of the match award. Order results alphabetically on the name of the team. (<name, number>) [2 marks]
13. Find the venue where the maximum number of wides have been given. In case of ties, return the one that comes before in alphabetical ordering. Output should contain only 1 row. (<venue>) [2 marks]
14. Find the venue(s) where the team bowling first has won the match. If there are more than 1 venues, list all of them in order of the number of wins (by the bowling team). Resolve ties alphabetically. (<venue>) [3 marks]
15. Find the bowler who has the best average overall. Bowling average is calculated using the following formula:
				bowling average = Number of runs given/  Number of wickets taken
Calculate the average upto 3 decimal places and return the bowler with the lowest average runs per wicket. In case of tie, return the results in alphabetical order. (<player name>) [4 marks]
16. List the players and the corresponding teams where the player played as “CaptainKeeper” and won the match. Order results alphabetically on the player’s name. (<player name, name>) [3 marks]
17. List the names of all players and their runs scored (who have scored at least 50 runs in any match). Order result in decreasing order of runs scored. Resolve ties alphabetically. (<player name, runs scored>) [2 marks]
18. List the player names who scored a century but their teams lost the match. Order results alphabetically. (<player name>) [3 marks]
19. List match ids and venues where KKR has lost the game. Order result in increasing order of match ids. (<match id, venue>) [3 marks]
20. List the names of top 10 players who have the best batting average in season 5. Batting average can be calculated according to the following formula:
batting average(player) = Number of runs scored by player/ Number of matches player has batted in 			[2 marks]
The output should contain exactly 10 rows. Report results upto 3 decimal places. Resolve ties alpha- betically. (<player name>) [4 marks]
21. Using the formula provided in the previous query, find out the batting average of all players across all seasons. The batting average of a country X is:
		country batting average = 􏰀 Summationover n, n∈player-of-country-X [ batting average(n)/ |player of country X| ]	[3 marks]
List the top 5 countries with the highest country batting average. Report results upto 3 decimal places. Output may contain 5 or more rows. Resolve ties alphabetically. (<country name>) [4 marks]





