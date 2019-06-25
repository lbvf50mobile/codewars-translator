return {
  reverse_words = function(str)
      local reverse =  function(arr)
        local i, j = 1, #arr
        while i < j do
          arr[i], arr[j] = arr[j], arr[i]
      
          i = i + 1
          j = j - 1
        end
        return arr
      end
      words = {}
      for word in str:gmatch("[^ ]+") do table.insert(words, word) end
      words = reverse(words)
      for k,v in pairs(words) do print(v) end
      implode = function (delimiter, list)
        local len = #list
        if len == 0 then
          return ""
        end
        local string = list[1]
        for i = 2, len do
          string = string .. delimiter .. list[i]
        end
        return string
      end
      return implode(" ", words)
    end
  }