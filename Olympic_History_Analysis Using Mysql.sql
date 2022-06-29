create database project1 ;
use project1;
create table olympics_history 
(id int,
Name varchar(255),	
Sex varchar(255),	
Age varchar(255),	
Height varchar(255),	
Weight varchar(255),	
Team varchar(255),	
NOC varchar(255),	
Games varchar(255),	
Year int,	
Season varchar(255),	
City varchar(255),	
Sport varchar(255),	
Event varchar(255),	
Medal varchar(255));

use project1;
select * from athlete_events  ;
select * from olympics_history ;
select * from athlete_events limit 10;

/*Q1)Show that players who is participated in Year 1992*/
select * from athlete_events where year = '1992' ;


/*Q2 show the games in earliest to latest with years*/
select games from athlete_events 
group by year order by games ;


/*Q3 show city who taken part in Events*/
select distinct city from athlete_events ;


/*Q4 Find total number of summer olyampic games*/
select  count(distinct games) from athlete_events 
where season = "summer" ;



/*Q5 Find  sports and games which is held in summer season */
select distinct sport , games from athlete_events  
where  season = "summer" 
order by games ; 


select * from athlete_events ;


/* Find that players whose weight is 60 and height is 170 */
select distinct name from athlete_events 
where height = '170' and weight = '60' ;


/*dont want that players whose taem is china */
select name , team  from athlete_events 
where not (team = "china" ) ;


/*Find That players who won gold medal and  belongs team is italy*/
select *  from athlete_events 
where medal = "gold" and  team = "italy";


/*top  athletes who has won the most gold medal */
select name , count(medal) from athlete_events 
where medal = "gold" 
group by name 
order by count(medal)desc  ;



/*TOP 1 Athletes who Won most gold medal */
select name, count(medal) from athlete_events 
where medal ="gold" 
group by name 
order by count(medal) desc limit 1;


/*list down total gold medal  won by each country */
select country ,count(medal) 
from athlete_events 
where medal ="gold" 
group by country 
order by count(medal) desc;


/*changing my colum name noc to Country*/
alter table athlete_events change column noc Country varchar(50) ;



/*list down total  silver medal won by each country */
select country , count(medal) 
from athlete_events 
where medal ='silver' 
group by country 
order by count(medal) ;

select * from athlete_events ;



/* how to list down total gold, silver and bronze medals on by each country */
select country, count(medal) as total_medal , medal 
from athlete_events
where medal <> "na" 
group by country , medal ;


/* How Many Sports has been held in olympic history */
select count(distinct sport) 
from athlete_events ;



/*Which city has won Most Medal in olympic History */
select city  ,count( medal) as total_medals 
from athlete_events 
where medal <> "na" 
group by city 
order by count(medal) desc ;



/*Count the silver medal of city london */
select city , count(medal) from athlete_events 
where city = "london" and medal = "silver" 
group by city 
order by count(medal) ;























/*compare Q3 and Q4*/




















