
#!/usr/bin/env bash

# Author: Adrian Lujan Muñoz ( aka clhore )

# Colours
export end="\033[0m\e[0m"
export gray="\e[0;37m\033[1m"

# Commands path
export ECHO="/usr/bin/echo"
export RM="/usr/bin/rm"
export CURL="/usr/bin/curl"
export MKDIR="/usr/bin/mkdir"
export CHMOD="/usr/bin/chmod"
export LN="/usr/bin/ln"


test -f /opt/hostExplorer/hostExplorer || {
	$MKDIR /opt/hostExplorer &>/dev/null; cd /opt/hostExplorer
	$CURL -O https://raw.githubusercontent.com/clhore/hostExplorer_V3/main/hostExplorer &>/dev/null
	$CURL -O https://raw.githubusercontent.com/clhore/hostExplorer_V3/main/oui_hex.txt &>/dev/null
	$CHMOD +x hostExplorer &>/dev/null; $LN -s /opt/hostExplorer/hostExplorer /bin/hostExplorer &>/dev/null
}

$ECHO -e "${gray}:: Proceso de instalacion terminado${end}";
