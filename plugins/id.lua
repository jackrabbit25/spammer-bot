function run(msg, matches)
  if matches[1]:lower() == 'ایدی' or 'id' then
      if redis:get("id:"..msg.to.id..":"..msg.from.id) then
    local wtf = redis:ttl("id:"..msg.to.id..":"..msg.from.id)
          return "☠️ko3Khol "..wtf.." Sec Dg EMtehan KOn"
   
    redis:setex("id:"..msg.to.id..":"..msg.from.id, 60, true)
    local text = "☠️Your #ID : |"..msg.from.id.."|\n☠️Group #ID : |"..msg.to.id.."|"
          return text
    else
    redis:setex("id:"..msg.to.id..":"..msg.from.id, 60, true)
    local text = "☠️Your #ID : |"..msg.from.id.."|\n☠️Group #ID : |"..msg.to.id.."|"
          return text
        end
     end
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
