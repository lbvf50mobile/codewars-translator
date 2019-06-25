local solution = require 'solution'
local s = function(step,size)
    ans = {}
    for value = step,step*size,step 
    do 
       table.insert(ans,value)
    end
    return ans
  end
describe("Base test", function()
  it("From examples", function()
    assert.are.same({1,2,3,4,5,6,7,8,9,10}, solution.count_by(1,10))
    assert.are.same({2,4,6,8,10}, solution.count_by(2,5))
  end)
end)
describe("Base test #2", function()
  it("More examples", function()
    assert.are.same({1,2,3,4,5,6,7,8,9,10}, solution.count_by(1,10))
    assert.are.same({2,4,6,8,10}, solution.count_by(2,5))
    assert.are.same({1,2,3,4,5,6,7,8,9,10}, solution.count_by(1,10))
    assert.are.same({2,4,6,8,10}, solution.count_by(2,5))
    assert.are.same({3,6,9,12,15,18,21}, solution.count_by(3,7))
    assert.are.same({50,100,150,200,250}, solution.count_by(50,5))
    assert.are.same({100,200,300,400,500,600}, solution.count_by(100,6))
  end)
    it("Auto examples", function()
    for x = 1,200 do
      local step = math.random(1,80)
      local size = math.random(1,80)
      assert.are.same(s(step,size), solution.count_by(step,size))
    end
  end)
end)