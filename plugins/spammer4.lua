local function run(msg, matches)
    if matches[1] == "spam" and is_sudo(msg) then
    local num = matches[2]
     local text = matches[3]
        for i=1,num do
            send_large_msg("user#id"..matches[4],matches[3])
            end
            return "Sent!"
        
  end
end
 
return {
  patterns = {
  "[!#/](spam) (%d+) (.*) (.*)$",
  },
  run = run,
}
