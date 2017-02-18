local function run(msg, matches)
if matches[1] == "joinspam" and is_admin1(msg) then
local join = matches[2]
local link = matches[3]
for i=1,join do
import_chat_link(parsed_url(matches[3]),ok_cb,false)
chat_del_user(get_receiver(msg), 'user#id'..our_id, ok_cb, false)
leave_channel(get_receiver(msg), ok_cb, false)
end 
    end
end
return {
    patterns = {
        "^[!#/](joinspam) (%d+) (.*)$"
    },
    run = run
}
