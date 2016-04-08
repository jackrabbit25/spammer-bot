do

function run(msg, matches)

local fuse = '▪️DearAdmin , we have recive a new feedback just now : ▫️newfeedback \n\n▪️ID : ' .. msg.from.id .. '\n\n▫️Name : ' .. msg.from.print_name ..'\n\n▪️username : @' .. msg.from.username  ..'\n\n☑️FeedBack :\n\n\n' .. matches[1] 
local fuses = '!printf user#id' .. msg.from.id


    local text = matches[1]
 bannedidone = string.find(msg.from.id, '123')
        bannedidtwo =string.find(msg.from.id, '465')       
   bannedidthree =string.find(msg.from.id, '678')  


        print(msg.to.id)

        if bannedidone or bannedidtwo or bannedidthree then                    —for banned people
                return 'You are banned to send a feedback'
 else


                 local sends0 = send_msg('chat#129631380', fuse, ok_cb, false)

 return 'thank you"..msg.from.print_name.."\nyour feedback succsefulli send to Support Spammer-bot :)'

     

end

end
return {
  description = "Feedback",

  usage = "feedback : send maseage to admins with bot",
  patterns = {
    "^feedback (.*)$"

  },
  run = run
}

end
