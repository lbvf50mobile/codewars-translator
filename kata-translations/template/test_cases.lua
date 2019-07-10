local solution = require 'solution'
-- let shapeArea = x => Math.pow(x,2) + Math.pow(x-1,2);
local s = function(x) return math.pow(x,2) + math.pow(x-1,2) end
describe("Shape Area test set", function()
  it("Static tests", function()
    assert.are.same(5, solution.shape_area20190710(2))
    assert.are.same(13, solution.shape_area20190710(3))
    assert.are.same(1, solution.shape_area20190710(1))
    assert.are.same(41, solution.shape_area20190710(5))

    assert.are.same(s(2), solution.shape_area20190710(2))
    assert.are.same(s(3), solution.shape_area20190710(3))
    assert.are.same(s(1), solution.shape_area20190710(1))
    assert.are.same(s(5), solution.shape_area20190710(5))
  end)
  it("Auto tests", function()
    for i=1,10000,1 do
      assert.are.same(s(i), solution.shape_area20190710(i))
    end
  end)
end)