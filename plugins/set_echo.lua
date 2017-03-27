local function run(msg, matches)
if matches[1] == "setecho" then 
local text = matches[2] 
redis:set('bot:echo',text) 
  return '> Echo Text Succefuli Saved!'
  else
 reply_msg(msg.id, (redis:get('bot:echo')  or "You Can Set By /setecho text Command!"), ok_cb, true)
 end
end
 patterns = {
 "^[!/#](setecho) (.*)$",
 "^(.*)$",
 },
 run = run
 }
