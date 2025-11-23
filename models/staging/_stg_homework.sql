-- select count(*) as validity_0
-- from {{source('sofia_air_quality', 'raw_pm25_verified')}}
-- where Validity = 0

select count(*)  as agg_type_not_day
from {{source('sofia_air_quality', 'raw_pm25_verified')}}
where AggType != 'day'