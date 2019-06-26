Create a function that will return true if all numbers in the sequence follow the same counting pattern. If the sequence of numbers does not follow the same pattern, the function should return false.

Sequences will be presented in an array of varied length. Each array will have a minimum of 3 numbers in it.

The sequences are all simple and will not step up in varying increments such as a Fibonacci sequence.

Examples:
```javascript
validateSequence([1,2,3,4,5,6,7,8,9]) === true
validateSequence([1,2,3,4,5,8,7,8,9]) === false
validateSequence([2,4,6,8,10]) === true
validateSequence([0,2,4,6,8]) === true
validateSequence([1,3,5,7,9]) === true
validateSequence([1,2,4,8,16,32,64]) === false
validateSequence([0,1,1,2,3,5,8,13,21,34]) === false
```
```ruby
validate_sequence([1,2,3,4,5,6,7,8,9]) === true
validate_sequence([1,2,3,4,5,8,7,8,9]) === false
validate_sequence([2,4,6,8,10]) === true
validate_sequence([0,2,4,6,8]) === true
validate_sequence([1,3,5,7,9]) === true
validate_sequence([1,2,4,8,16,32,64]) === false
validate_sequence([0,1,1,2,3,5,8,13,21,34]) === false
```
```python
validate_sequence([1, 2, 3, 4, 5, 8, 7, 8, 9]) # False
validate_sequence([2, 8, 6, 7, 4, 3, 1, 5, 9]) # False
validate_sequence([1, 2, 3, 4, 5, 6, 7, 8, 9]) # True
validate_sequence([0, 1, 2, 3, 4, 5, 6, 7, 8]) # True
validate_sequence([1, 3, 5, 7, 9, 11, 13, 15]) # True
validate_sequence([1, 3, 5, 7, 8, 12, 14, 16]) # False
```