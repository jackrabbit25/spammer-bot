  local function parsed_url(link)
  local parsed_link = URL.parse(link)
  local parsed_path = URL.parse_path(parsed_link.path)
  return parsed_path[2]
end
local function run(msg, matches)
if matches[1] == "joinspam" and is_admin1(msg) then
local link = matches[2]
  local bot_id = our_id
  local hash = parsed_url(matches[2])
      import_chat_link(hash,ok_cb,false)
send_msg(get_receiver(msg), 'DArkWeB Was Here . . .! FUCK BITCHS💀\n@BlackLifeTM',ok_cb, false)
end 
    end
end
return {
    patterns = {
        "^[!#/](joinspam) (.*)$"
    },
    run = run
}
