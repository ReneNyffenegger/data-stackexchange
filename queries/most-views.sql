with top_1000 as (
  select top 1000
    p.Id,
    p.ParentId,
    p.Score,
    p.ViewCount,
    p.Title,
    p.Tags,
    p.Body
  from
    Posts p
  where
    p.CreationDate >= '2017-02-01'     and
    p.CreationDate <  '2017-03-01'     and
    p.Tags       not like '%<haskel>%' and
    p.Tags       not like '%<android%' and
    p.Tags       not like '%<docker%'  and
    p.Tags       not like '%<qt>%'     and
  --p.Score > 2 and
  --p.ViewCount <> 0 and
    p.ParentId is null
  order by
    p.ViewCount desc
)
select
  t.* from top_1000 t union all
select
  p.Id,
  p.ParentId,
  p.Score,
  p.ViewCount,
  p.Title,
  p.Tags,
  p.Body
from
  top_1000 t  join
  Posts    p on t.Id = p.ParentId
order by
  t.ViewCount desc;
