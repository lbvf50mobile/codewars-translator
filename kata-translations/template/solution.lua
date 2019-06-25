print('---solution.lua')
return {
    count_by = function(step,size)
      ans = {}
      for value = step,step*size,step 
      do 
         table.insert(ans,value)
      end
      return ans
    end
  }