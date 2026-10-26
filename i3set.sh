read -p "start ? : " answr
if [ "$answr" = "yes" ] ; then
    git clone https://github.com/JohnDoemnika/I3PURPLECONF.git
    #moving the config file to the good directory
    sudo cp .config/i3/config .config/i3/config.bak
    sudo cp I3PURPLECONF/config .config/i3/
    #creation of the i3 bar status directory 
    mkdir .config/i3status/
    #copy bar config
    sudo cp I3PURPLECONF/i3status.conf .config/i3status/
    echo "you need to refresh your i3config"
else
    exit
fi
