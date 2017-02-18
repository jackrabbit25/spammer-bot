function run(msg, matches)
  if matches[1]:lower() == 'id' then
    local text = "☠️Your #ID : |"..msg.from.id.."|\n☠️Group #ID : |"..msg.to.id.."|"
          return text
   end
end

return {
description = "show your id",
usage = {
moderator = {
"!id : show your userid and information" },
},
patterns = {
"^[!/#]([Ii][Dd])$",
--"^ایدی$", 
},
run = run
}
