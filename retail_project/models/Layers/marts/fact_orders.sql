SELECT
    order_id,
    customer_id,
    product_id,
    order_date,
    ship_date,
    sales,
    quantity,
    discount,
    profit,
    state
FROM {{ ref('stg_orders') }}