I'm translating this [Kata](https://www.codewars.com/kata/count-by-x) to the `BASH` language.



**JS**: `Test.assertSimilar(countBy(2,5), [2,4,6,8,10], "Array does not match")` 

**RSpec for BASH**: `output = run_shell args: ['2','5']; expect(output).to include('[2,4,6,8,10]')`

I need a function that translates mulyline string in `JS`:
```
Test.assertSimilar(countBy(1,10), [1,2,3,4,5,6,7,8,9,10], "Array does not match")
Test.assertSimilar(countBy(2,5), [2,4,6,8,10], "Array does not match")
```

Into the `Ruby` code:
```
output = run_shell args: ['1','10']; expect(output).to include('[1,2,3,4,5,6,7,8,9,10]')
output = run_shell args: ['2','5']; expect(output).to include('[2,4,6,8,10]')
```