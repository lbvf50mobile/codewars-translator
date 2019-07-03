return {
  sort_array = function(array)
      local odd, even, answer, insert = {}, {}, {}, 0
      for i, v in ipairs(array) do
        if 0 == v%2 then table.insert(even,v)
        else table.insert(odd,v) end
      end
      table.sort(odd)
      table.sort(even,function(a,b) return a > b end)
      for i, v in ipairs(array) do
        if 0 == v%2 then insert = table.remove(even,1)
        else insert = table.remove(odd,1) end
        table.insert(answer,insert)
      end
      -- table.remove(t,1)
      return answer
    end
  }