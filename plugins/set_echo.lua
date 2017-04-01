local function run(msg, matches)
  if matches[1] == "echo" and is_admin1(msg) then
  if matches[2] == "on" and is_admin1(msg) then
  redis:set("autorepeater", true)
  return 'Now I Repeat All your Msgs.!!'
    end
    if matches[2] == "off" and is_admin1(msg) then
  redis:del("autorepeater")
  return 'Succesfully Disabled.!!'
    end
  end
  end
  return {
  patterns = {
     "^[!/#]([Ee]cho) (.*)$",
     },
     run = run,
     }
