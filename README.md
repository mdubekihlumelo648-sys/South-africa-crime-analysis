# South-africa-crime-analysis
# South Africa Crime Statistics Analysis (2005–2016)

## Problem
South Africa's crime landscape shifts over time and varies significantly by
province. This project analyzes how crime volume and rate changed
between 2005–06 and 2015–16 using official SAPS-sourced data, to identify
where the problem is most severe and which categories are trending up or down.

## Dataset
Kaggle: "Crime Statistics for South Africa" (SouthAfricaCrimeStats_v2.csv) —
~30,861 rows covering every police station, crime category, and year from
2005–06 to 2015–16.

## Methodology
- **Excel**: Cleaned and aggregated station-level data into three PivotTables
  (by province, by category, and combined), with % change calculations.
- **SQL (PostgreSQL)**: Loaded the full raw dataset and wrote four queries
  answering: total crime by province, top crime categories nationally,
  % change by province, and % change by category. See `sql/crime_analysis.sql`.
- **Power BI**: Connected directly to the PostgreSQL database and built a
  dashboard summarizing province and category totals for 2015–16.

## Key Findings
- 7 of 9 provinces saw total crime **decrease** from 2005–06 to 2015–16.
- **Western Cape (+28%)** and **Limpopo (+21%)** were the outliers, both
  increasing significantly.
- **Drug-related crime grew ~173%** nationally, and **DUI incidents grew
  ~130%** — the two fastest-growing categories.
- Nationally, nearly 2 million crimes were recorded in 2015–16 alone.

## Limitations
- Data reflects reported crimes only, not actual incidence.
- Analysis compares two endpoints (2005–06 vs 2015–16), not the full 11-year trend.

## Files
- `data/` — raw dataset
- `excel/` — PivotTable analysis
- `sql/` — SQL queries 
- `power-bi/` — Power BI dashboard (.pbix)
- `screenshots/` — dashboard preview
