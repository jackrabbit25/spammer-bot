do function run(msg, matches)

	  if matches[1]:lower() == 'id' and is_sudo(msg) then
      return "Sudo☑\n⭕⭕️Your id⭕️\n"..msg.from.id.."\n⭕️Group id⭕️\n"..msg.to.id
      end
      if matches[1]:lower() == 'id' and is_admin(msg) then
      return "Admin☑️\n⭕️Your id⭕️\n"..msg.from.id.."\n⭕️Group id⭕️\n"..msg.to.to.id
      end
      if matches[1]:lower() == 'id' and is_owner(msg) then
      return "Owner☑️\n⭕️Your id⭕️\n"..msg.from.id.."\n⭕️Group id⭕️\n"..msg.to.to.id
      end
      if matches[1]:lower() == 'id' and is_momod(msg) then
      return "Moderator☑️\n⭕️Your id⭕️\n"..msg.from.id.."\n⭕️Group id⭕️\n"..msg.to.id
      end
      if matches[1]:lower() == 'id' then
      return "Member☑️\⭕️Your id⭕️\n"..msg.from.id.."\n⭕️Group id⭕️\n"..msg.to.id
    end
end
  return {
  description = "show your id",
  usage = "id",
  patterns = {
  "^[!/#]([Ii][Dd])$",
    },
  run = run
}
end

--sepehr blacklifeTM
