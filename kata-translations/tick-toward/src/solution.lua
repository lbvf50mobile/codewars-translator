kata = {}
function kata.tick_toward(start,target)
  --your code goes here
  local a,b =  start[1], start[2]
  local x,y = target[1], target[2]
  if (a == x) and (b == y) then return {start} end
  if( x >  a) then
    a = a + 1
  elseif x > a then
    a = a - 1
  end
  if y > b then
    b = b + 1
  elseif y < b then
    b = b - 1
  end
  local answer = {start}
  local rec = kata.tick_toward({a,b},target)
  for k,v in pairs(rec) do
    table.insert(answer,v)
  end
  return answer
end

return kata