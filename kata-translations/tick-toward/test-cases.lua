
-- TODO: Replace examples and use TDD development by writing your own tests
local solution = require 'solution'
describe("tick_toward", function()
  it("gets medial values between two positive x_y coords", function()
    assert.are.same({{2,2},{3,2},{4,2}}, solution.tick_toward({2,2},{4,2}))
    assert.are.same({{3,2},{4,3},{5,4},{5,5}}, solution.tick_toward({3,2},{5,5}))
    assert.are.same({{3,2},{4,3},{5,4},{5,5}}, solution.tick_toward({3,2},{5,5}))
  end)
end)