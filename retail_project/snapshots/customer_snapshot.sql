{% snapshot customer_snapshot %}

{{
    config(
      target_database='retail_dw',
      target_schema='snapshots',
      unique_key='customer_id',
      strategy='check',
      check_cols=['segment']
    )
}}

SELECT
    customer_id,
    customer_name,
    segment,
    region
FROM {{ ref('stg_orders') }}

{% endsnapshot %}