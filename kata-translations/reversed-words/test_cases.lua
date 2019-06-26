local solution = require 'solution'
local b = {
  reverse =  function(arr)
    local i, j = 1, #arr
    while i < j do
      arr[i], arr[j] = arr[j], arr[i]
  
      i = i + 1
      j = j - 1
    end
    return arr
  end,
  split = function(str)
    words = {}
      for word in str:gmatch("[^ ]+") do table.insert(words, word) end
    return words
  end,
  join = function (list)
    local len = #list
    local delimiter = " "
    if len == 0 then
      return ""
    end
    local string = list[1]
    for i = 2, len do
      string = string .. delimiter .. list[i]
    end
    return string
  end

}
b.reverse_words = function(str)
  return b.join(b.reverse(b.split(str)))
end

describe("Static", function()
  it("Static", function()
    assert.are.same("world! hello", solution.reverse_words("hello world!"))
    assert.are.same("this like speak doesn't yoda", solution.reverse_words("yoda doesn't speak like this"))
    assert.are.same("foobar", solution.reverse_words("foobar"))
    assert.are.same("editor kata", solution.reverse_words("kata editor"))
    assert.are.same("boat your row row row", solution.reverse_words("row row row your boat"))
  end)
  it("Static #2", function()
    assert.are.same("world! hello", b.reverse_words("hello world!"))
    assert.are.same("this like speak doesn't yoda", solution.reverse_words("yoda doesn't speak like this"))
    assert.are.same("foobar", b.reverse_words("foobar"))
    assert.are.same("editor kata", b.reverse_words("kata editor"))
    assert.are.same("boat your row row row", b.reverse_words("row row row your boat"))
  end)
end)
