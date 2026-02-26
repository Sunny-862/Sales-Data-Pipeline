SELECT
    {{ dbt_utils.generate_surrogate_key(['country','city','state','postal_code']) }} as location_id,
    country,
    city,
    state,
    postal_code,
    region
FROM {{ ref('stg_orders') }}
GROUP BY country, city, state, postal_code, region