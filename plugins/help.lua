do
    
function run(msg, matches)
  local help = [[راهنمای ربات اسپمر :

▪️ /spam [adad] [payam]
اسپم به تعداد دلخواه به جای adad عدد و به جای payam متن رو بزارید
(توجه پلاگین spammer2 اسپم رو  بصورت تک تک میفرسته و spammer1 در قالب یک متن)

▪️ spam
فرستادن حدود 40 متن طولانی spamming!

▪️ /pvspam [adad] [payam] [userid]
ارسال اسپم به پیوی به جای adad تعداد ب جای payam متن و به جای userid یوزر ایدی شخص مورد نظر رو وارد کنید.

▪️ /id
نیاز به توضیح نیست!

▪️ !plugin + [name]
به جای name اسم پلاگین رو بدون .lua وارد کنید. (فعال کردن پلاگین)

▪️ !plugin - [name]
به جای name اسم پلاگین رو بدون .lua وارد کنید. (غیرفعال کردن پلاگین)

▪️ !plugins
دریافت لیست پلاگین ها

▪️ !plugins ?
ریلود کردن پلاگین ها

▪️/rymsg [tedad]
پاک کردن پیام های ربات به تعداد دلخواه

▪️/stats bot
دریافت اطلاعات ربات

▪️ /reload 
ریلود کردن پلاگین ها و ربات

▪️/contactlist
دریافت لیست مخاطبین

▪️/addcontact [phone] [firstname] [lastname]
ادد کردن شماره فرد مورد نظر

▪️ /join [link]
جوین شدن ربات در گروه توسط لینک

▪️ /setbotphoto
ست کردن پروفایل ربات

▪️ /leave 
لفت دادن از گروه (برای فعال شدن این دستور و اتولیو پلاگین leave رو فعال کنید)

▪️/delcontact [userid]
پاک کردن شماره فرد مورد نظر

▪️ /sendcontact [phone] [firstname] [lastname]
فرستادن مخاطب 

▪️ /pmblock [userid]
بلاک کردن یک فرد

▪️ /pmunblock [userid]
انبلاک کردن یک فرد

▪️ /pm [userid] [message]
فرستادن پیام به فرد خاص

▪️ /read on|off
خاموش یا روشن کردن خواندن پیام ها توسط ربات

▪️ /update 
اعمال کردن اپدیت ها از گیتهاب

▪️ /inv @username 
دعوت کردن فردی ب گروه

▪️ /helppv
دریافت متن راهنما در خصوصی 

—---------------------------------------------------------—
در اخر ی نکته در مورد spamauto
اگر این پلاگین رو فعال کنید ربات ب ی هیولا تبدیل میشه و همه چیز رو چندین بار تکرار میکنه تا جایی ک تلگرام محدودیت بزاره!
پس به موقع فعالش کنید
—---------------------------------------------------------—
@BlackLifeTM
SupportGroup:
https://t.me/joinchat/AAAAAEBzN-QgmTCxqwlrxg
—---------------------------------------------------------—
Github: https://github.com/3pehrdev/spammer-bot.git]]
    if matches[1] == 'helppv' and is_admin1(msg) then
      send_large_msg("user#id"..msg.from.id, help)      
   return 'Help was sent in your Pv :D'
    end
    if matches[1] == 'help' and is_admin1(msg) then
            return '|CreaTed By BlackLifeTM xD| \n\n '..help..' . '
    end
end 

return {
  patterns = {
    "^[!/#](helppv)$",
    "^[!/#](help)$"
  },
  run = run
}
end
