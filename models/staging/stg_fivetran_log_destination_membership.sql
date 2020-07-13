with destination_membership as (
    
    select * 
    from {{ var('destination_membership') }}

    -- union tables from multiple destinations here
),

fields as (

    select
        destination_id,
        user_id,
        activated_at,
        joined_at,
        role as destination_role
        
    from destination_membership
)

select * from fields