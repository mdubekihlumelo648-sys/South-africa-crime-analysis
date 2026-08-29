CREATE TABLE crime_stats(

province VARCHAR(50),
station VARCHAR(100),
category VARCHAR(100),
yr_2005_2006 INTEGER,
yr_2006_2007 INTEGER,
yr_2007_2008 INTEGER,
yr_2008_2009 INTEGER,
yr_2009_2010 INTEGER,
yr_2010_2011 INTEGER,
yr_2011_2012 INTEGER,
yr_2012_2013 INTEGER,
yr_2013_2014 INTEGER,
yr_2014_2015 INTEGER,
yr_2015_2016 INTEGER
)

-- How much total crime happend in each province in (2015 - 2016)
-- and which is the highest/lowest

SELECT province, SUM(yr_2015_2016)
FROM crime_stats
GROUP BY province
ORDER BY SUM(yr_2015_2016) DESC;

-- Which crime categories are the biggest problems nationally
-- Top 5 by volume in 2015 - 2016
SELECT  category, SUM(yr_2015_2016)
FROM crime_stats
GROUP BY category
ORDER BY SUM(yr_2015_2016) LIMIT 5;

-- Which provinces got better vs worse in overall crime
-- Between 2005-2006 and 2015-2016
SELECT province,
      SUM(yr_2005_2006) AS total_2005,
	  SUM(yr_2015_2016) AS total_2006,
	  ROUND(
	         (SUM(yr_2015_2016) -  SUM(yr_2005_2006))::numeric / SUM(yr_2005_2006) * 100,1) AS pct_change
			 FROM crime_stats
			 GROUP BY province
			 ORDER BY pct_change DESC;

-- Which crime categories grew or shrank the most nationally
--between 2005-2006 and 2015-2016
SELECT category,
       SUM(yr_2005_2006) AS total_2005,
	   SUM(yr_2015_2016) AS total_2015,
	   ROUND(

	          (SUM(yr_2015_2016) - SUM(yr_2005_2006))::numeric / NULLIF(SUM(yr_2005_2006), 0) * 100,1
			  ) AS pct_change
FROM crime_stats
GROUP BY category
ORDER BY pct_change DESC
LIMIT 10;




	       
















	  
