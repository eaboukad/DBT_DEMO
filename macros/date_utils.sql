{% macro get_season(started_at) %}

   case when month(to_timestamp(started_at)) in (12, 1, 2)
        then 'winter'
        when month(to_timestamp(started_at)) in (3, 4, 5)
            then 'SPRING'
        when month(to_timestamp(started_at)) in (6, 7, 8)
            then 'SUMMER'
        else 'AUTUMN'
    end


{% endmacro %}


{% macro day_type(started_at)%}

    case 
        when dayname(to_timestamp(started_at)) in ('Sat', 'Sun')
            then 'WEEKEND'
        else 'BUSINESSDAY'
    end 

{%endmacro%}