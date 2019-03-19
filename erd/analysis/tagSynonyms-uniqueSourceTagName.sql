select
   count(*)  cnt,
   sourceTagName
from
   tagSynonyms
group by
   sourceTagName
having
   count(*) > 1
