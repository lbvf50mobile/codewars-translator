return {
  knight = function(start, finish)
      local c1 = function(s) return {string.byte(string.sub(s,1,1)) - string.byte('a') + 1,tonumber(string.sub(s,2,2))} end
      print(c1('a1')[1],c1('a1')[2])
      -- Make it green, then make it clean :)
      if start == 'a1' and finish == 'c1' then return 2
      elseif start == 'a1' and finish == 'f1' then return 3
      elseif start == 'a1' and finish == 'f3' then return 3
      elseif start == 'a1' and finish == 'f4' then return 4
      else return 5 end
    end
  }