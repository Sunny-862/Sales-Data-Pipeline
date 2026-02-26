SELECT
    product_id,
    ANY_VALUE(product_name) AS product_name,
    ANY_VALUE(category) AS category,
    ANY_VALUE(sub_category) AS sub_category
FROM {{ ref('stg_orders') }}
GROUP BY product_id