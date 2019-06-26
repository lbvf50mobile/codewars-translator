local a = {
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
return {
  reverse_words = function(str)
      return a.join(a.reverse(a.split(str)))
    end
}