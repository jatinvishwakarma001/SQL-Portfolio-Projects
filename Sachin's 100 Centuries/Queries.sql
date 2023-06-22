-- no of centurie 
SELECT
  COUNT(S_No) AS 'Total No of Centuries'
FROM
  Centuries;

-- no of double centuries
SELECT
  COUNT(Score) AS 'Total No. of Double Centuries'
FROM
  Centuries
WHERE
  Score>=200;

-- No of centuries By year (Top Five)
SELECT
  YEAR,
  COUNT(S_No) AS 'No_of_Centuries'
FROM
  Centuries
GROUP BY
  YEAR
ORDER BY 
  No_of_Centuries DESC
LIMIT 5;

-- No of centuries By year (Bottom ten)
SELECT
  YEAR,
  COUNT(S_No) AS 'No_of_Centuries'
FROM
  Centuries
GROUP BY
  YEAR
ORDER BY 
  No_of_Centuries ASC
LIMIT 5;

-- NO OF CENTURIES IN TEST & ODI
SELECT
  COUNT(S_No) AS 'Centurie in Test',
  100-COUNT(S_No) AS 'Centurie in ODI'
FROM
  Centuries
WHERE
  Match_type='TEST';

-- Career Strike rate
SELECT
  ROUND((AVG(Strike_Rate)), 2) AS 'Strike Rate'
FROM
  Centuries;

-- career Stikerate agins each team
SELECT
  ROUND((AVG(Strike_Rate)), 2) AS 'Strike Rate',
  Agains AS 'Team'
FROM
  Centuries
GROUP BY
  Agains;

-- Centuries in India
SELECT
  COUNT(RESULT) AS 'Centuries in India'
FROM
  Centuries
WHERE
  H_A='Home';

-- centuries in India when india won 
SELECT
  COUNT(RESULT) AS 'Centuries in India when India won'
FROM
  Centuries
WHERE
  RESULT='Won'
  AND H_A='Home';

--Winnig % when Sachin hits a century in India.
SELECT
  ROUND(
    (
      CAST(
        (
          SELECT
            COUNT(RESULT)
          FROM
            Centuries
          WHERE
            RESULT='Won'
            AND H_A='Home'
        ) AS REAL
      )/(
        SELECT
          COUNT(RESULT)
        FROM
          Centuries
        WHERE
          H_A='Home'
      )*100
    ),
    2
  ) AS 'Winnig percentage when Sachin hits centuries in India';

-- Centuries Outside India
SELECT
  COUNT(S_No) AS 'Centuries outside India'
FROM
  Centuries
WHERE
  H_A IN ('Away', 'Neutral');

-- Centuries outside india when india won
SELECT
  COUNT(S_No) AS 'Centuries outside India when India won'
FROM
  Centuries
WHERE
  RESULT='Won'
  AND H_A IN ('Away', 'Neutral');

-- Winning % when sachin hits centuries outside india
SELECT
  ROUND(
    (
      CAST(
        (
          SELECT
            COUNT(S_No)
          FROM
            Centuries
          WHERE
            RESULT='Won'
            AND H_A IN ('Away', 'Neutral')
        ) AS REAL
      )/(
        SELECT
          COUNT(S_No)
        FROM
          Centuries
        WHERE
          H_A IN ('Away', 'Neutral')
      )*100
    ),
    2
  ) AS 'Winnig percentage when Sachin hits centuries outside India';

-- Total No of distinct venues where Sachin hits centuries  
SELECT
  COUNT(DISTINCT (Venue)) AS 'No of venues where Sachin hits centuries'
FROM
  Centuries;

-- Total No of distinct venues where Sachin hits centuries in India
SELECT
  COUNT(DISTINCT (Venue)) AS 'No of venues where Sachin hits centuries in India'
FROM
  Centuries
WHERE
  H_A='Home';

-- no of centuries agains each team
SELECT
  Agains AS 'Team',
  COUNT(S_No) AS 'Centuries',
  SUM(Score) AS 'Total Score'
FROM
  Centuries
GROUP BY
  Agains
ORDER BY
  Centuries DESC;

-- no of centuries @ distict venue & total runs
SELECT
  Venue AS 'Grounds',
  City,
  COUNT(S_No) AS 'Centuries',
  SUM(Score) AS 'Total Score',
  ROUND((AVG(Strike_Rate)), 2) AS 'AVG Strike Rate'
FROM
  Centuries
GROUP BY
  Venue
ORDER BY
  Centuries DESC;

-- Highest Score By Sachin Agains each team
SELECT
  S_No,
  Agains,
  Innings,
  MAX(Score) AS 'Highest Score'
FROM
  Centuries
GROUP BY
  Agains
ORDER BY
  S_No;

-- No of centuries as Captain  
SELECT
  COUNT(S_No) AS 'No of centuries as Captain'
FROM
  Centuries
WHERE
  Captain='Yes';

-- No of  POTM awards
SELECT
  Agains,
  COUNT(S_No) AS 'POTM'
FROM
  Centuries
GROUP BY
  Agains;

-- no of times when Sachin goes out and not out
SELECT
  COUNT(Dismissed) AS 'Goes Out',
  100-COUNT(Dismissed) AS 'Goes Not Out'
FROM
  Centuries
WHERE
  Dismissed='Yes';

-- No of Centuries while chasing target in ODI & India Won
SELECT
  Innings,
  COUNT(S_No) AS 'Centuries',
  Match_type,
  RESULT
FROM
  Centuries
WHERE
  Match_type='ODI'
  AND Innings=2
  AND RESULT='Won';

-- Centuries Agains AUS While Chasing
SELECT
  S_No,
  Score,
  RESULT,
  Match_type
FROM
  Centuries
WHERE
  Agains='Australia'
  AND Innings IN (2, 4)
ORDER BY
  Match_type;
 
-- Score wise Ranking Top 10
SELECT
  Score,
  Agains,
  DENSE_RANK() OVER (
    ORDER BY
      Score DESC
  ) AS RANK
FROM
  Centuries
LIMIT 10;

-- No of Centuries agains each team outside India
SELECT
  Agains AS Team,
  COUNT(S_No) 'Centuries'
FROM
  Centuries
WHERE
  H_A='Away'
  OR H_A='Neutral'
GROUP BY
  Agains
ORDER BY
  Agains;