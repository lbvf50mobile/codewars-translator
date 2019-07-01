return {
  dig_pow = function(n,pow)
      -- Make it green, then make it clean :)
      local answer = 0
      for digit in string.gmatch(tostring(n), '(%d)') do
        digit = tonumber(digit)
        answer = answer + math.pow(digit,pow)
        pow = pow + 1
      end
      if 0 == answer%n then return answer/n
      else return -1 end
    end
  }
