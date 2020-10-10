
#!/bin/bash
if [ -z "$PROTON_VERSION" ]; then
    PROTON_VERSION="5.6-GE-2"
fi
PROTON_DIR=$HOME/.steam/steam/steamapps/common/Proton\ $PROTON_VERSION
RUNNING="$1"

if [ ! -f "$PROTON_DIR/proton" ] ; then
    echo $PROTON_DIR/proton
	echo "Proton version $PROTON_VERSION not found!";
	exit
fi

if [ ! -f "$RUNNING" ] ; then
	echo "$RUNNING does not exist!";
	exit
fi

printf "Proton (\033[32m$PROTON_VERSION\033[0m) script found at\n  \033[32m$PROTON_DIR/proton\033[0m\n\n"
printf "Now running\n  \033[32m$PWD/$RUNNING\033[0m\n"

export STEAM_COMPAT_DATA_PATH="$HOME/.local/share/Steam/steamapps/compatdata"
export MOUNT_PATH="/media/d4/01D434E8CBD0E8F0"

echo $PROTON_DIR
PROTON_USE_WINED3D11=1 \
#PROTON_NO_D3D11=0 \
PROTON_NO_ESYNC=1 \
$HOME/.steam/steam/steamapps/common/Proton\ $PROTON_VERSION/proton \
run $RUNNING

exit 0
