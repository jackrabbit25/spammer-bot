local function run(msg, matches ) 
  if matches[1] == "id" then
    return "⚠️Your id⚠️\n "..msg.from.id
  end
end

return {
  patterns ={
    "^[/! #]([Ii][Dd])$" 
 }, 
  run = run 
}

--by blacklifeTM
