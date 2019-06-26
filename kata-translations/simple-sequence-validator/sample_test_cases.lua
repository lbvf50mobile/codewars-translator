local solution = require 'solution'
describe("Base test", function()
  it("From examples", function()
    assert.are.same('world! hello', solution.reverse_words('hello world!'))
  end)
end)
