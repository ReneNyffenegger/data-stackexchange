select
   count(*)
from
   tagSynonyms syn                                     join
   tags        tag on syn.targetTagname = tag.tagName
