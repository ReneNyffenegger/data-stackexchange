select
   count(syn.id) cntSynonyms,
   count(tag.id) cntFoundSourceTagNames
from
   tagSynonyms syn                                     left join
   tags        tag on syn.sourceTagname = tag.tagName
