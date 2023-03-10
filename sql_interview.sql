--Which catalog has the most clicks?

SELECT * FROM catalog_info
SELECT * FROM user_experience

select catalog_name, sum(clicks)
from catalog_info 
join user_experience using(catalog_id)
group by catalog_name 
order by sum(clicks) desc
limit 1



SELECT SUM (clicks) as clicks , 
Catalog_info.catalog_name 
From user_experience
Join  catalog_info
On catalog_info.catalog_id = user_experience.catalog_id 
Group by clicks, Catalog_info.catalog_name  
Order by clicks desc
limit 1



select catalog_name, sum(clicks)
from user_experience 
join catalog_info using(catalog_id)
group by catalog_name 
order by sum(clicks) desc
limit 1





--Which catalog has the most clicks?

SELECT * FROM user_experience
SELECT * FROM catalog_info

with oto as (SELECT catalog_name, clicks
from user_experience
join catalog_info using (catalog_id))
select  catalog_name, sum(clicks) clicks 
from oto
group by catalog_name limit 1
--order by clicks asc


SELECT catalog_name, sum(clicks) as oto 
from user_experience
join catalog_info on user_experience.catalog_id = catalog_info.catalog_id
group by catalog_name 
order by oto desc limit 2



--which catalog has the most time spent and which date was it published?


SELECT * FROM user_experience
SELECT * FROM catalog_info


select catalog_name, publish_date, max(time_spent)
from user_experience 
join catalog_info using (catalog_id)
group by catalog_name, publish_date, time_spent 
order by time_spent desc --limit 1





















































































