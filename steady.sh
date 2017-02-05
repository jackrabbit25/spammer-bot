EOF

sleep 1.2

# Checking if the bot folder is in HOME
echo -e "$bld$f4 CHECKING INSTALLED BOT...$rst"
sleep 0.5
ls ../ | grep $BOT > /dev/null
if [ $? != 0 ]; then
  echo -e "$f1 ERROR: BOT: $BOT NOT FOUND IN YOUR HOME DIRECTORY$rst"
  sleep 4
  exit 1
fi
echo -e "$f2 $BOT FOUND IN YOUR HOME DIRECTORY$rst"
sleep 0.5


sleep 1.5
echo -e "$bld$f4 CHECKING PROCESSES...$rst"
sleep 0.7

# Looks for the number of screen/telegram-cli processes
CLINUM=`ps -e | grep -c telegram-cli`
echo "$f2 RUNNING $CLINUM TELEGRAM-CLI PROCESS$rst"
sleep 0.9

# =====Setup ends===== #

# Opening new tmux in a daemon
echo -e "$bld$f4 ATTACHING TMUX AS DAEMON...$rst"
# It is recommended to clear cli status always before starting the bot
rm ../.telegram-cli/state  > /dev/null 
# Nested TMUX sessions trick 
TMUX= tmux new-session -d -s $BOT "./launch.sh"
sleep 1.3

CLIPID=`ps -e | grep telegram-cli | head -1 | sed 's/^[[:space:]]*//' | cut -f 1 -d" "`
echo -e "$f2 NEW TELEGRAM-CLI PROCESS: $CLIPID$rst"
echo ""
echo ""

# Locating telegram-cli status
cat /proc/$CLIPID/task/$CLIPID/status > STATUS
NONVOLUNTARY=`grep nonvoluntary STATUS | cut -f 2 -d":" | sed 's/^[[:space:]]*//'`

sleep 3

# :::::::::::::::::::::::::
# ::::::: MAIN LOOP :::::::
# :::::::::::::::::::::::::

while true; do
  
	echo -e "$f2 TIMES CHECKED AND RUNNING:$f5 $OK $rst"
	echo -e "$f2 TIMES FAILED AND RECOVERED:$f5 $BAD $rst"
	echo ""
	
	cat /proc/$CLIPID/task/$CLIPID/status > CHECK
	if [ $? != 0 ]; then
		I=$(( $I + 1 ))
		if [ $I -ge 3 ]; then
			kill $CLIPID
			tmux kill-session -t $BOT
			rm ../.telegram-cli/state  > /dev/null 
			NONVOLUNTARY=0
			NONVOLUNTARYCHECK=0
			VOLUNTARY=0
			VOLUNTARYCHECK=0
		fi
	else
		I=1
	fi
	VOLUNTARYCHECK=`grep voluntary CHECK | head -1 | cut -f 2 -d":" | sed 's/^[[:space:]]*//'`
