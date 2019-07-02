local solution = require 'solution'
describe("Better than average", function()
  it("Static tests", function()
    assert.are.same(true, solution.better_than_average({2, 3}, 5))
    assert.are.same(true, solution.better_than_average({100, 40, 34, 57, 29, 72, 57, 88}, 75))
    assert.are.same(false, solution.better_than_average({12, 23, 34, 45, 56, 67, 78, 89, 90}, 9))
  end)
end)