local solution = require 'solution'
local s = function(s)
  return tonumber(s)
end
describe("Convert String to a number.", function()
  it("Static tests", function()
    assert.are.same(123, solution.string_to_number("123"))
    assert.are.same(-14, solution.string_to_number("-14"))
    assert.are.same(0, solution.string_to_number("0"))
  end)
  it("Auto tests", function()
    for i = -10000,10000,1 do
      assert.are.same(i, solution.string_to_number(tostring(i)))
    end
  end)
end)