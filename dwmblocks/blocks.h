//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"🔊 ", "amixer get Master | grep Left | grep -o \"\\(\\[\\of]\\|[0-9]*%\\)\" ", 1, 0},
	{"⧈ ", "sed \"s/$/%/\" /sys/class/power_supply/BAT0/capacity ", 5, 12},
	{"⧉ ", "sed \"s/$/%/\" /sys/class/power_supply/BAT1/capacity ", 5, 12},
	{"🕗 ", "date '+%b %d (%a) %I:%M%p'",	60,	0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = ' ';
