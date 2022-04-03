# Write your MySQL query statement below
select
    t.request_at Day,
    round(count(case when t.status like 'cancelled%' then t.id else null end) / cast(count(t.id) as real), 2) "Cancellation Rate"
from
    Trips t
inner join
    Users p
        on t.client_id = p.users_id
        and p.banned = 'No'
inner join
    Users d
        on t.driver_id = d.users_id
        and d.banned = 'No'
where
    t.request_at between '2013-10-01' and '2013-10-03'
group by
    1
;