local solution = require 'solution'
describe("Playing with Digits sample test cases", function()
  it("Static tests", function()
    assert.are.same(1, solution.dig_pow(89, 1))
    assert.are.same(-1, solution.dig_pow(92, 1))
    assert.are.same(51, solution.dig_pow(46288, 3))
  end)
end)