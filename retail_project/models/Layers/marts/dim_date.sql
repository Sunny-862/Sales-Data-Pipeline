SELECT DISTINCT
    order_date
FROM {{ ref('stg_orders') }}