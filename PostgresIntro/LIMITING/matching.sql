SELECT DISTINCT origin_city_name
    FROM performance
    -- WHERE origin_city_name LIKE 'Fort%';
    -- returnrs the cities that begin with "Fort"

    -- WHERE origin_city_name LIKE '%FL';
    -- cities in FL

    -- WHERE origin_city_name LIKE '____, KS';
    -- Four lettered cities in Kansas

    WHERE origin_city_name LIKE '____, %';
    -- Four lettered cities 