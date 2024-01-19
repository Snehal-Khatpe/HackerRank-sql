/* 
What are the match details (date, home team, away team, and outcome) 
for matches between FC Barcelona and Real Madrid CF in a Spanish football league, 
considering only the matches where FC Barcelona (team ID 8634) or Real Madrid CF (team ID 8633) participated?
*/



SELECT 
	date,
	CASE WHEN hometeam_id = 8634 THEN 'FC Barcelona' 
         ELSE 'Real Madrid CF' END as home,
	CASE WHEN awayteam_id = 8634 THEN 'FC Barcelona' 
         ELSE 'Real Madrid CF' END as away,
	-- Identify all possible match outcomes
	CASE 
            WHEN home_goal > away_goal AND hometeam_id = 8634 THEN 'Barcelona win!'
            WHEN home_goal > away_goal AND hometeam_id = 8633 THEN 'Real Madrid win!'
            WHEN home_goal < away_goal AND awayteam_id = 8634 THEN 'Barcelona win!'
            WHEN home_goal < away_goal AND awayteam_id = 8633 THEN 'Real Madrid win!'
            ELSE 'Tie!' 
        END AS outcome
FROM matches_spain
WHERE (awayteam_id = 8634 OR hometeam_id = 8634)
      AND (awayteam_id = 8633 OR hometeam_id = 8633);
