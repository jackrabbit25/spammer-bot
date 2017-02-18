  local parsed_link = URL.parse(link)
  local parsed_path = URL.parse_path(parsed_link.path)
  return parsed_path[2]
end
local function run(msg, matches)
if matches[1] == "joinspam" and is_admin1(msg) then
local join = matches[2]
local link = matches[3]
for i=1,join do
import_chat_link(parsed_url(matches[3]),ok_cb,false)
send_large_msg(get_receiver(msg), 'DArkWeB Was Here . . .! FUCK BITCHS💀\n@BlackLifeTM',ok_cb, false)
chat_del_user(get_receiver(msg), 'user#id'..our_id, ok_cb, false)
leave_channel(get_receiver(msg), ok_cb, false)
end end end
return { patterns = {"[!#/](joinspam) (.*) (%d+)$"},run = run}
