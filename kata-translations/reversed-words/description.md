Create a function with two arguments that will return a list of length (n) with multiples of (x). 

Assume both the given number and the number of times to count will be positive numbers greater than 0. 

Return the results as an array (or list in Python, Haskell or Elixir).

Examples:
```csharp
Kata.CountBy(1,10) // should return new int[] {1,2,3,4,5,6,7,8,9,10}
Kata.CountBy(2,5) // should return new int[] {2,4,6,8,10}
```
```javascript
countBy(1,10) === [1,2,3,4,5,6,7,8,9,10]
countBy(2,5) === [2,4,6,8,10]
```
```coffeescript
countBy(1,10) == [1,2,3,4,5,6,7,8,9,10]
countBy(2,5) == [2,4,6,8,10]
```
```python
count_by(1,10) #should return [1,2,3,4,5,6,7,8,9,10]
count_by(2,5) #should return [2,4,6,8,10]
```
```ruby
count_by(1,10) #should return [1,2,3,4,5,6,7,8,9,10]
count_by(2,5) #should return [2,4,6,8,10]
```
```haskell
countBy 1 10 `shouldBe` [1,2,3,4,5,6,7,8,9,10]
countBy 2  5 `shouldBe` [2,4,6,8,10]
```
```elixir
count_by(1, 10) == [1,2,3,4,5,6,7,8,9,10]
count_by(2, 5) == [2,4,6,8,10]
```
```solidity
countBy(1,10) // should return [1,2,3,4,5,6,7,8,9,10]
countBy(2,5) // should return [2,4,6,8,10]
```
```lua
count_by(1,10) -- should return {1,2,3,4,5,6,7,8,9,10}
count_by(2,5) -- should return {2,4,6,8,10}