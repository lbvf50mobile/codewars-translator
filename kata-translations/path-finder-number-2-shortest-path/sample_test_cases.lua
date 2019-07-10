local solution = require 'solution'
describe("shortest_path test set", function()
  it("Static tests", function()
    assert.are.same(5, solution.shortest_path(2))
    assert.are.same(13, solution.shortest_path(3))
    assert.are.same(1, solution.shortest_path(1))
    assert.are.same(41, solution.shortest_path(5))
  end)
end)