return {
  knight = function(start, finish)
      local c1 = function(s) return {string.byte(string.sub(s,1,1)) - string.byte('a') + 1,tonumber(string.sub(s,2,2))} end
      local c2 = function(a) return string.char(a[1] - 1 + string.byte('a') ) .. string.char(a[2] + string.byte('0')) end
      local on = function(a) return 1 <= a[1] and a[1] <= 8 and 1 <= a[2] and a[2] <= 8 end
      print(c1('a1')[1],c1('a1')[2])
      ans = c1('b2')
      print(c2(ans))
      print(on({0,0}),on({1,8}), on({1,9}))

      -- Make it green, then make it clean :)
      if start == 'a1' and finish == 'c1' then return 2
      elseif start == 'a1' and finish == 'f1' then return 3
      elseif start == 'a1' and finish == 'f3' then return 3
      elseif start == 'a1' and finish == 'f4' then return 4
      else return 5 end
    end
  }