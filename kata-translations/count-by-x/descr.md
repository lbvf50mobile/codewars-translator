I'm translating this [Kata](https://www.codewars.com/kata/count-by-x) to the `Lua` language.

It `Lua` tesing frame work `atual` and `expected` order are changes from `JS` and `Ruby`:

**Lua**: `assert.are.same("expected", solution.foo())` 

**Ruby**: `Test.assert_equals("actual", "expected")`

I need a function that translates mulyline string in `JS`:
```
Test.assertSimilar(countBy(1,10), [1,2,3,4,5,6,7,8,9,10], "Array does not match")
Test.assertSimilar(countBy(2,5), [2,4,6,8,10], "Array does not match")
```

Into `Lua` code:
```
assert.are.same({1,2,3,4,5,6,7,8,9,10}, solution.count_by(1,10))
assert.are.same({2,4,6,8,10}, solution.count_by(2,5))
```