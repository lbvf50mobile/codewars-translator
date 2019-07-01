local solution = require 'solution'
local s = function(n,pow)
  -- Make it green, then make it clean :)
  local answer = 0
  for digit in string.gmatch(tostring(n), '(%d)') do
    digit = tonumber(digit)
    answer = answer + math.pow(digit,pow)
    pow = pow + 1
  end
  if 0 == answer%n then return answer/n
  else return -1 end
end
describe("Playing with Digits sample test cases", function()
  it("Static tests", function()
    assert.are.same(1, solution.dig_pow(89, 1))
    assert.are.same(-1, solution.dig_pow(92, 1))
    assert.are.same(51, solution.dig_pow(46288, 3))
  end)
end)
describe("Playing with Digits hidden test cases", function()
  it("Static tests", function()
    assert.are.same(1, solution.dig_pow(89, 1))
    assert.are.same(-1, solution.dig_pow(92, 1))
    assert.are.same(51, solution.dig_pow(46288, 3))
  end)
end)