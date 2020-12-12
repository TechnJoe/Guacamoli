drop table if exists avocados;
drop table if exists calicli;
drop table if exists calisales;

create table avocados (
	id int primary key,
	sale_date date,
	average_price numeric(3,2),
	total_volume numeric(12,4),
	type char(12),
	year int,
	geography varchar(30)
);
create table calicli (
	record_date int primary key,
	value decimal,
	anomaly numeric(3,2)
);
-- creating this table to hold query output
create table calisales (
	Record_date bigint primary key,
	total_price_organic numeric,
	total_price_conventional numeric,
	total_vol_organic numeric,
	total_vol_conventional numeric,
	avg_price_organic numeric,
	avg_price_conventional numeric
);

select * from calisales order by 1;
select * from calicli order by 1;
select * from avocados;

-- combine the dates from avocados to match the dates from calicli.
insert into calisales
select *
,total_price_organic / total_vol_organic as avg_price_organic
,total_price_conventional / total_vol_conventional as avg_price_conventional
FROM (select cast(concat(cast(date_part('year',sale_date) as char(4)), right(concat('0', cast( date_part('month',sale_date)as varchar(2))),2)) as bigint) as record_date
	,sum(case when type = 'organic' then (total_volume * average_price) end) as total_price_organic
	,sum(case when type = 'conventional' then (total_volume * average_price) end) as total_price_conventional
	,sum(case when type = 'organic' then (total_volume) end) as total_vol_organic
	,sum(case when type = 'conventional' then (total_volume) end) as total_vol_conventional
	from avocados
	where geography = 'California'
	group by cast(concat(cast(date_part('year',sale_date) as char(4)), right(concat('0', cast( date_part('month',sale_date)as varchar(2))),2)) as bigint) ) z

select anomaly from calicli
select record_date from calisales
select sale_date from avocados

-- Inner join to combine calisales with 
select c.record_date, c.total_price_organic, c.total_price_conventional, c.total_vol_organic, 
c.total_vol_conventional, c.avg_price_organic, c.avg_price_conventional, cli.value, cli.anomaly
from calisales as c
join calicli as cli
on c.record_date = cli.Record_Date;
