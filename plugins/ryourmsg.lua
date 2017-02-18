local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" Last My Messages Removed!', ok_cb, false)
  else
    send_msg(extra.chatid, 'ℹ️Msgs Has Been Removed!', ok_cb, false)
  end
end
local function run(msg, matches)
  if matches[1] == 'rymsg' and is_owner(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 10000 or tonumber(matches[2]) < 1 then
        return "Eror"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
  --    return "ℹ️Only For The SuperGroups"
    end
  else
   -- return "ℹ️Only For The Admins"
  end
end

return {
    patterns = {
        '^[/!#](rymsg) (%d*)$'
    },
    run = run
}
