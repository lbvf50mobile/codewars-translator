local solution = require 'solution'
describe("Array sort tests", function()
  it("Static tests", function()
    assert.are.same({1, 3, 8, 4, 5, 2, 11}, solution.sort_array({5, 3, 2, 8, 1, 4, 11}))
    assert.are.same({22, 4, 1, 5, 2, 11, 37, 0}, solution.sort_array({2, 22, 37, 11, 4, 1, 5, 0}))
    assert.are.same({1, 1, 5, 11, 2, 11, 111, 0}, solution.sort_array({1, 111, 11, 11, 2, 1, 5, 0}))
    assert.are.same({}, solution.sort_array({}))
  end)
end)