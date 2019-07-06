local solution = require 'solution'
local s = function(n)
  -- Make it green, then make it clean :)
  return math.pow(math.floor(math.sqrt(n)+0.5),2)
end
describe("Find Nearest square number", function()
  it("Static tests", function()
    assert.are.same(1, solution.nearest_sq(1))
    assert.are.same(1, solution.nearest_sq(2))
    assert.are.same(9, solution.nearest_sq(10))
    assert.are.same(121, solution.nearest_sq(111))
    assert.are.same(10000, solution.nearest_sq(9999))
  end)
  it("Auto tests ('small tests')", function()
     for i=1,10000 do
      local rand = math.random(1, 500)
      assert.are.same(s(rand), solution.nearest_sq(rand))
     end
  end)
  it("Auto tests ('big tests')", function()
    for i=1,10000 do
     local rand = math.random(1000, 500000 )
     assert.are.same(s(rand), solution.nearest_sq(rand))
    end
 end)
end)