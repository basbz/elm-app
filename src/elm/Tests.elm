import String

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

import Collection exposing (findById, deleteById)

testItem = {id = 1, name = "vik"}
testCollection = [testItem]
emptyCollection = []

tests : Test
tests = suite "A Test Suite"
  [ test "id?" (assertEqual (findById 1 testCollection) (Just testItem))
  , test "id?" (assertEqual (findById 1 emptyCollection) Nothing)
  , test "delete by id" (assertEqual (deleteById 1 testCollection) emptyCollection)
  , test "delete by id" (assertEqual (deleteById 0 testCollection) testCollection)
  ]

main = runDisplay tests
