local solution = require 'solution'
describe("Base test", function()
  it("From examples", function()
    assert.are.same({1,2,3,4,5,6,7,8,9,10}, solution.count_by(1,10))
    assert.are.same({2,4,6,8,10}, solution.count_by(2,5))
  end)
end)