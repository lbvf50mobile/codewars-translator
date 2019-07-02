local solution = require 'solution'
local s1 = function(class_points, your_points)
  local avg =  0
  for name, mark in pairs(class_points) do
      avg = avg + mark 
  end
  avg = avg / #class_points
  if avg < your_points then return true
  else return false end
end
local s = function(class_points, your_points)
  local avg =  0
  for name, mark in pairs(class_points) do
      avg = avg + mark  - your_points
  end
  if avg < 0 then return true
  else return false end
end
describe("Better than average", function()
  it("Static tests", function()
    assert.are.same(true, solution.better_than_average({2, 3}, 5))
    assert.are.same(true, solution.better_than_average({100, 40, 34, 57, 29, 72, 57, 88}, 75))
    assert.are.same(false, solution.better_than_average({12, 23, 34, 45, 56, 67, 78, 89, 90}, 9))
  end)
  it("Static tests 2", function()
    assert.are.same(true, solution.better_than_average({2, 3}, 5))
    assert.are.same(true, solution.better_than_average({100, 40, 34, 57, 29, 72, 57, 88}, 75))
    assert.are.same(false, solution.better_than_average({12, 23, 34, 45, 56, 67, 78, 89, 90}, 9))
    assert.are.same(true, solution.better_than_average({100, 40, 34, 57, 29, 72, 57, 88}, 75))
    assert.are.same(true, solution.better_than_average({12, 23, 34, 45, 56, 67, 78, 89, 90}, 69))

    assert.are.same(s({2, 3}, 5), solution.better_than_average({2, 3}, 5))
    assert.are.same(s({100, 40, 34, 57, 29, 72, 57, 88}, 75), solution.better_than_average({100, 40, 34, 57, 29, 72, 57, 88}, 75))
    assert.are.same(s({12, 23, 34, 45, 56, 67, 78, 89, 90}, 9), solution.better_than_average({12, 23, 34, 45, 56, 67, 78, 89, 90}, 9))
    assert.are.same(s({100, 40, 34, 57, 29, 72, 57, 88}, 75), solution.better_than_average({100, 40, 34, 57, 29, 72, 57, 88}, 75))
    assert.are.same(s({12, 23, 34, 45, 56, 67, 78, 89, 90}, 69), solution.better_than_average({12, 23, 34, 45, 56, 67, 78, 89, 90}, 69))
    assert.are.same(s1({2, 3}, 5), solution.better_than_average({2, 3}, 5))
    assert.are.same(s1({100, 40, 34, 57, 29, 72, 57, 88}, 75), solution.better_than_average({100, 40, 34, 57, 29, 72, 57, 88}, 75))
    assert.are.same(s1({12, 23, 34, 45, 56, 67, 78, 89, 90}, 9), solution.better_than_average({12, 23, 34, 45, 56, 67, 78, 89, 90}, 9))
    assert.are.same(s1({100, 40, 34, 57, 29, 72, 57, 88}, 75), solution.better_than_average({100, 40, 34, 57, 29, 72, 57, 88}, 75))
    assert.are.same(s1({12, 23, 34, 45, 56, 67, 78, 89, 90}, 69), solution.better_than_average({12, 23, 34, 45, 56, 67, 78, 89, 90}, 69))
  end)
  it("Auto Success", function()
    for i=1,500,1 do
      local your = math.random(50,100)
      local x = math.random(1,your-1)
      a,b,c, d = {}, {}, {}, {}
        for j=0, math.random(10,100), 1 do
          x = math.random(1,your-1)
          table.insert(a,x)
          table.insert(b,x)
          table.insert(c,x)
          table.insert(d,x)
        end 
        assert.are.same(true, solution.better_than_average(a, your))
        assert.are.same(s1(d, your), solution.better_than_average(b, your))
        assert.are.same(s(d,your), solution.better_than_average(c, your))
    end
  end)
  it("Auto Fail", function()
    for i=1,500,1 do
      local your = math.random(1,49)
      local x = math.random(your+1,100)
      a,b,c, d = {}, {}, {}, {}
        for j=0, math.random(10,100), 1 do
          x = math.random(your+1,100)
          table.insert(a,x)
          table.insert(b,x)
          table.insert(c,x)
          table.insert(d,x)
        end 
        assert.are.same(false, solution.better_than_average(a, your))
        assert.are.same(s1(d, your), solution.better_than_average(b, your))
        assert.are.same(s(d,your), solution.better_than_average(c, your))
    end
  end)
  it("Auto Success/Fail", function()
    for i=1,500,1 do
      local your = math.random(1,100)
      local x = math.random(1,100)
      a,b,c, d = {}, {}, {}, {}
        for j=0, math.random(10,100), 1 do
          x = math.random(1,100)
          table.insert(a,x)
          table.insert(b,x)
          table.insert(c,x)
          table.insert(d,x)
        end 
        assert.are.same(s1(d, your), solution.better_than_average(b, your))
        assert.are.same(s(d,your), solution.better_than_average(c, your))
    end
  end)
end)
