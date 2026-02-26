SELECT
    customer_id,
    ANY_VALUE(customer_name) AS customer_name,
    ANY_VALUE(segment) AS segment,
    ANY_VALUE(region) AS region
FROM {{ ref('stg_orders') }}
GROUP BY customer_id