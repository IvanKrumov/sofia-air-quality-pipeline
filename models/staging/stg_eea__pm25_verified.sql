SELECT
 Samplingpoint as station_id,
 CAST(Start as TIMESTAMP) as measurement_start_utc,
 CAST(`End` as TIMESTAMP) as measument_end_utc, 
 Value as pm25_value,
 unit as measurement_unit,
 Validity as is_valid,
 Verification as is_verified
FROM {{source('sofia_air_quality', 'raw_pm25_verified')}}
WHERE Validity = 1
 AND Value IS NOT NULL    

