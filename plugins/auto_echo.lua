local function run(msg, matches)
  if is_sudo(msg) and redis:get("autorepeater") then
   return matches[1]
  end
end
return {
  patterns = {
    "^(.+)$",
  }, 
  run = run 
}
