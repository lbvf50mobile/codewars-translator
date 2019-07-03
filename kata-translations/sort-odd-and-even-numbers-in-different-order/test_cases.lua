local solution = require 'solution'
s = function(array)
  local odd, even, answer, insert = {}, {}, {}, 0
  for i, v in ipairs(array) do
    if 0 == v%2 then table.insert(even,v)
    else table.insert(odd,v) end
  end
  table.sort(odd)
  table.sort(even,function(a,b) return a > b end)
  for i, v in ipairs(array) do
    if 0 == v%2 then insert = table.remove(even,1)
    else insert = table.remove(odd,1) end
    table.insert(answer,insert)
  end
  return answer
end
function table.clone(org)
  return {table.unpack(org)}
end
describe("Array sort tests", function()
  it("Static tests #1", function()
    assert.are.same({1, 3, 8, 4, 5, 2, 11}, solution.sort_array({5, 3, 2, 8, 1, 4, 11}))
    assert.are.same({22, 4, 1, 5, 2, 11, 37, 0}, solution.sort_array({2, 22, 37, 11, 4, 1, 5, 0}))
    assert.are.same({1, 1, 5, 11, 2, 11, 111, 0}, solution.sort_array({1, 111, 11, 11, 2, 1, 5, 0}))
    assert.are.same({}, solution.sort_array({}))
  end)
  it("Static tests #2", function()
    assert.are.same({1, 3, 8, 4, 5, 2, 11}, solution.sort_array({5, 3, 2, 8, 1, 4, 11}))
    assert.are.same({22, 4, 1, 5, 2, 11, 37, 0}, solution.sort_array({2, 22, 37, 11, 4, 1, 5, 0}))
    assert.are.same({1, 1, 5, 11, 2, 11, 111, 0}, solution.sort_array({1, 111, 11, 11, 2, 1, 5, 0}))
    assert.are.same({}, solution.sort_array({}))
    assert.are.same({1, 3, 8, 4, 5, 2, 11}, solution.sort_array({5, 3, 2, 8, 1, 4, 11}))
    assert.are.same({22, 4, 1, 5, 2, 11, 37, 0}, solution.sort_array({2, 22, 37, 11, 4, 1, 5, 0}))
    assert.are.same({1, 1, 5, 11, 2, 11, 111, 0}, solution.sort_array({1, 111, 11, 11, 2, 1, 5, 0}))
    assert.are.same({}, solution.sort_array({}))
    assert.are.same({1, 8, 3, 6, 5, 4, 7, 2, 9, 0}, solution.sort_array({1, 2, 3, 4, 5, 6, 7, 8, 9, 0}))
    assert.are.same({8, 1, 6, 3, 4, 5, 2, 7, 0, 9}, solution.sort_array({0, 1, 2, 3, 4, 5, 6, 7, 8, 9}))
    assert.are.same({8, 1, 6, 3, 4, 5, 2, 7, 0, 9}, solution.sort_array({0, 1, 2, 3, 4, 9, 8, 7, 6, 5}))
  end)
  it("Auto tests", function()
    for rep=1,1000,1 do
      local size, input, output = math.random(5, 50 ), {}, {}
      for i =1,size,1 do
        table.insert(input,math.random(0, 100 ))
      end
      output = s(table.clone(input))
      assert.are.same(output, solution.sort_array(table.clone(input)))
    end
  end)
end)