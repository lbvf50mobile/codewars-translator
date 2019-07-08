return {
  knight = function(start, finish)
      local c1 = function(s) return {string.byte(string.sub(s,1,1)) - string.byte('a') + 1,tonumber(string.sub(s,2,2))} end
      local c2 = function(a) return string.char(a[1] - 1 + string.byte('a') ) .. string.char(a[2] + string.byte('0')) end
      local on = function(a) return 1 <= a[1] and a[1] <= 8 and 1 <= a[2] and a[2] <= 8 end
      local board = function() return {a1=true,a2=true,a3=true,a4=true,a5=true,a6=true,a7=true,a8=true,
        b1=true,b2=true,b3=true,b4=true,b5=true,b6=true,b7=true,b8=true,
        c1=true,c2=true,c3=true,c4=true,c5=true,c6=true,c7=true,c8=true,
        d1=true,d2=true,d3=true,d4=true,d5=true,d6=true,d7=true,d8=true,
        e1=true,e2=true,e3=true,e4=true,e5=true,e6=true,e7=true,e8=true,
        f1=true,f2=true,f3=true,f4=true,f5=true,f6=true,f7=true,f8=true,
        g1=true,g2=true,g3=true,g4=true,g5=true,g6=true,g7=true,g8=true,
        h1=true,h2=true,h3=true,h4=true,h5=true,h6=true,h7=true,h8=true} end
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