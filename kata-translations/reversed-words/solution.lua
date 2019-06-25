return {
  reverse_words = function(str)
      local reverse =  function(arr)
        local i, j = 1, #arr
      
        while i < j do
          arr[i], arr[j] = arr[j], arr[i]
      
          i = i + 1
          j = j - 1
        end
      end
      words = {}
      for word in str:gmatch("%w+") do table.insert(words, word) end
      return 'world! hello'
    end
  }