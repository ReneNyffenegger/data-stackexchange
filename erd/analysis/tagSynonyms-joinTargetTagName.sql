select
   count(syn.id) cntSynonyms,
   count(tag.id) cntFoundTargetTagNames
from
   tagSynonyms syn                                     left join
   tags        tag on syn.targetTagname = tag.tagName
