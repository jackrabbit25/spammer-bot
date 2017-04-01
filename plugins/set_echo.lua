local function run(msg, matches)
if matches[1] == 'echo on' and is_admin1(msg) then
redis:set("autorepeater", true)
return 'Now I Repeat All your Msgs.!!'
end
if matches[1] == 'echo off' and is_admin1(msg) then
redis:del("autorepeater", true)
return 'Succesfulli DisableD.!!'
end
  if is_sudo(msg) and redis:get("autorepeater") then
   return matches[1]
  end
end
return {
  patterns = {
    "(.+)",
    "^[!/#][Ee]cho on$",
    "^[!/#][Ee]cho off$",
  }, 
  run = run 
}
