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

