local solution = require 'solution'
describe("Shape Area test set", function()
  it("Static tests", function()
    assert.are.same(5, solution.shape_area(2))
    assert.are.same(13, solution.shape_area(3))
    assert.are.same(1, solution.shape_area(1))
    assert.are.same(41, solution.shape_area(5))
  end)
end)