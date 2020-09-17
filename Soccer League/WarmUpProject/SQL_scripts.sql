#1. Find the birth date and position of every player whose name starts with the letter T.
    SELECT name,dob,position FROM player WHERE name LIKE "T%";

#2. Find all the players who are currently playing for the team named ”FC Barcelona”.
    SELECT * FROM player WHERE current_tid = (SELECT tid FROM team WHERE name = 'FC Barcelona');

#3. Find the players who are the captain of a team. List the player names and IDs, and also the team name. 
    SELECT p.name AS PlayerName,p.Pid,t.name AS TeamName FROM player p, team t 
    WHERE 
    p.Pid IN (SELECT captain_id FROM team_captain)
    AND p.current_tid = t.Tid;

    #List only the players with a name starting with the letter T.
    SELECT p.name AS PlayerName,p.Pid,t.name AS TeamName FROM player p, team t 
    WHERE 
    p.Pid IN (select captain_id FROM team_captain)
    AND p.current_tid = t.Tid
    AND p.name LIKE "T%";

#4. Find all the draws or ties (matches without a winner). List the date and times, stadium of these matches.
    SELECT date_time,stadium FROM matches WHERE home_goals = away_goals;

#5. Find the total number of goals scored by each team during the year 2019.
    SELECT SUM(goals) TotalGoals, tid
    FROM played_in 
    GROUP BY tid
    HAVING (
            tid in (SELECT home_tid FROM matches WHERE date_time in (SELECT date_time FROM matches WHERE year(date_time)='2019'))
            OR
            tid in (SELECT away_tid FROM matches WHERE date_time in (SELECT date_time FROM matches WHERE year(date_time)='2019'))
          );

#6. Find the names and IDs of the players who have never scored any goal.
    SELECT p.name,p.Pid FROM played_in pi, player p WHERE 
    goals=0
    AND pi.pid NOT IN (SELECT pid FROM played_in WHERE goals>0)
    AND p.Pid=pi.pid
    GROUP by pi.pid;

#7. For each player, find the total number of goals they scored. List the player names and IDs along with the number of goals.
    SELECT p.Pid,p.name,pi.totalGoals 
    FROM player p
    JOIN 
    ( SELECT SUM(goals) totalGoals, pid FROM played_in GROUP BY pid ) pi
    ON pi.pid = p.pid ORDER BY pi.totalGoals;
