local solution = require 'solution'
describe("Convert String to a number.", function()
  it("Static tests", function()
    assert.are.same(123, solution.string_to_number("123"))
    assert.are.same(-14, solution.string_to_number("-14"))
    assert.are.same(0, solution.string_to_number("0"))
  end)
end)