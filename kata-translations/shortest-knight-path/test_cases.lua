local solution = require 'solution'
describe("Shortest Knight Path", function()
  it("Static tests", function()
    local tests = {{'a1', 'c1', 2}, {'a1', 'f1', 3}, {'a1', 'f3', 3}, {'a1', 'f4', 4}, {'a1', 'f7', 5}}
    for keys, values in pairs(tests) do
      local start, finish, answer = table.unpack(values)
      assert.are.same(answer, solution.knight(start, finish))
    end
  end)
end)