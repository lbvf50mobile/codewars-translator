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
  end,
  implode = function (list, delimiter)
    local len = #list
    if len == 0 then
      return ""
    end
    local string = list[1]
    for i = 2, len do
      string = string .. delimiter .. list[i]
    end
    return string
  end,
}
b.reverse_words = function(str)
  return b.join(b.reverse(b.split(str)))
end
-- math.random(lower, upper) generates integer numbers between lower and upper (both inclusive).
-- string.char (···) Receives zero or more integers.
-- string.gsub(name, "^a", "")
b.random_string = function(n)
  local res = {}
  for i=1,n,1 do
    table.insert(res,string.char(math.random(32,32+95)))
  end
  local ans = string.gsub(b.implode(res,''),"%s+"," ")
  return ans
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

-- math.random(lower, upper) generates integer numbers between lower and upper (both inclusive).
-- string.char (···) Receives zero or more integers.
-- string.gsub(name, "^a", "")
describe("Auto test", function()
  it("Generate tests", function()
    for k=1,40,1 do
      print(b.random_string(40))
    end
  end)
end)
