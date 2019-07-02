local s1 = function(class_points, your_points)
  local avg =  0
  for name, mark in pairs(class_points) do
      avg = avg + mark 
  end
  avg = avg / #class_points
  if avg < your_points then return true
  else return false end
end

return {
  better_than_average= function(class_points, your_points)
      local avg =  0
      for name, mark in pairs(class_points) do
          avg = avg + mark  - your_points
      end
      if avg < 0 then return true
      else return false end
    end
  }

