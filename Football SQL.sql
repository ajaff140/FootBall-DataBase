select *
from FootBall.dbo.FootBallData


--Using the Where and the Order By Clause
select long_name, club_name, wage_euro, age, overall 
from FootBall.dbo.FootBallData
where club_name='Manchester United'
order by age, overall 

--Using WildCard functions to find specific Player Positions
select *
from FootBall.dbo.FootBallData
where player_positions = 'ST' club_position like 'RW'

--Highest Potential of age 26 and below
select long_name, player_positions, age, club_name, potential
from FootBall..FootBallData
where potential >= 90 AND age <= 26;

--Highest Potential of age 26 and above
select long_name, player_positions, age, club_name, potential
from FootBall..FootBallData
where potential >= 90 AND age >= 26;

--Highest Paid Player in Premier League, La Liga, BundesLiga, Serie A, Ligue 1
select MAX(wage_euro) AS Wages, long_name
from FootBall.dbo.FootBallData
where league_name = 'English Premier League'
GROUP BY long_name;

select MAX(wage_euro) AS Wages, long_name
from FootBall.dbo.FootBallData
where league_name = 'German 1. Bundesliga'
GROUP BY long_name;

select MAX(wage_euro) AS Wages, long_name
from FootBall.dbo.FootBallData
where league_name = 'Spain Primera Division'
GROUP BY long_name;

select MAX(wage_euro) AS Wages, long_name
from FootBall.dbo.FootBallData
where league_name = 'French Ligue 1'
GROUP BY long_name;

select MAX(wage_euro) AS Wages, long_name
from FootBall.dbo.FootBallData
where league_name = 'Italian Serie A'
GROUP BY long_name;

--Top 10 Higest Value Players
Select TOP 10 *
from FootBall.dbo.FootBallData

--Average Team Value
select AVG(cast(value_euro as bigint)) AS Squad_value
from FootBall.dbo.FootBallData
where club_name = 'Manchester United'

--Views
CREATE VIEW public_playerinfo AS
select long_name, player_positions, overall, club_name, nationality_name
from FootBall.dbo.FootBallData
 

