do
local function run(msg, matches)
local bot_id = our_id 
local fbot1 = 85831686 --idi khodetoono inja bezanid
    if msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(fbot1) then
       chat_add_user("chat#id"..msg.to.id, 'user#id'..fbot1, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^!!tgservice (.+)$",
  },
  run = run
}
end
