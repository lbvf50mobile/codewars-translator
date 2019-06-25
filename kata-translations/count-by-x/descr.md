During translating ["Count by X" Kata](https://www.codewars.com/kata/count-by-x) to the `BASH` language.

Required a function that translates this kind of `JS` muliline string:
```
Test.assertSimilar(countBy(1,10), [1,2,3,4,5,6,7,8,9,10], "Array does not match")
Test.assertSimilar(countBy(2,5), [2,4,6,8,10], "Array does not match")
```

Into the `Ruby RSpec` code for a `BASH Satic tests`:

```
output = run_shell args: ['1','10']; expect(output).to eq('[1,2,3,4,5,6,7,8,9,10]')
output = run_shell args: ['2','5']; expect(output).to eq('[2,4,6,8,10]')
```