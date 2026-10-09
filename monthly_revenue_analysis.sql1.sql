WITH sales_comparison AS 
		( SELECT sale_month,
		revenue,
        LAG(revenue) OVER(ORDER BY sale_month) AS previous_month_revenue,
		(revenue - LAG(revenue) OVER(ORDER BY sale_month))/ NULLIF (LAG(revenue) OVER(ORDER BY sale_month), 0) * 100 AS percentage_change,
		CASE
    
			WHEN revenue > LAG(revenue) OVER(ORDER BY sale_month) THEN 'Increased'
			WHEN revenue < LAG(revenue) OVER(ORDER BY sale_month) THEN 'Decreased'
			WHEN revenue =  LAG(revenue) OVER(ORDER BY sale_month) THEN 'No Change'
			ELSE 'No Previous Month'
		END AS revenue_status
FROM monthly_sales)

SELECT *
FROM sales_comparison
WHERE revenue_status = 'Increased'
ORDER BY percentage_change DESC
LIMIT 1;