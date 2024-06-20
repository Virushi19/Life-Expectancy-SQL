SELECT * FROM LifeExpectancyDB.life_expectancy;

-- Trend Analysis 
-- Life Expectancy Trends: Track how life expectancy has changed over time in each country.
SELECT Country, Year, `Life expectancy`
FROM LifeExpectancyDB.life_expectancy
ORDER BY Country, Year;

-- Adult Mortality Trends: Observe changes in adult mortality rates over the years.
SELECT Country, Year, `Adult Mortality`
FROM LifeExpectancyDB.life_expectancy
ORDER BY Country, Year;
-- Infant Mortality Trends: Analyze the trend in infant mortality rates.
SELECT Country, Year, `infant deaths`
FROM LifeExpectancyDB.life_expectancy 
ORDER BY Country, Year;

-- Economic Impact: Investigate the relationship between GDP and life expectancy.
SELECT Country, Year, `Life expectancy`, GDP
FROM LifeExpectancyDB.life_expectancy
WHERE GDP IS NOT NULL AND `Life expectancy` IS NOT NULL
ORDER BY Country, Year;

-- Life expectancy vs. Polio, Hepatitis B, Hiv/Aids, Diphtheria and Measles
SELECT 
    Country,
    Year,
    `Life expectancy`,
    Polio,
    `Hepatitis B`,
    `HIV/AIDS`,
    Diphtheria,
    Measles
FROM 
    LifeExpectancyDB.life_expectancy
WHERE 
    Year = 2015 
ORDER BY 
    Country, Year;

-- Retrieve data for global life expectancy trends
SELECT 
    Year,
    AVG(`Life expectancy`) AS AverageLifeExpectancy,
    MIN(`Life expectancy`) AS MinLifeExpectancy,
    MAX(`Life expectancy`) AS MaxLifeExpectancy
FROM 
    LifeExpectancyDB.life_expectancy
GROUP BY 
    Year
ORDER BY 
    Year;




