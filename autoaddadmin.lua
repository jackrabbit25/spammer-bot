[Forwarded from Telegram robot]
do
local function run(msg, matches)
local bot_id = our_id 
local fbot1 = ایدیه اکانت خودتونو بزنید اینجا
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
