local function run(msg, matches)
  if is_sudo(msg) and redis:get("autorepeater") then
    if not tonumber (msg.from.id) == 255317894 then -- Your Bot ID
   return matches[1]
  end
end
  end
return {
  patterns = {
    "^(.+)$",
  }, 
  run = run 
}
