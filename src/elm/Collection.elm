module Collection
  ( findById
  , deleteById
  ) where

type alias CollectionItem a = 
  { a |
    id: Int
  }

findById : Int -> List(CollectionItem a) -> Maybe(CollectionItem a)
findById id collection =
  List.foldr (\item acc ->
    if item.id == id then Just item else acc) Nothing collection

deleteById id collection =
  List.filter (\item -> not (item.id == id)) collection

updateById id collection update = 
  item = findById id

