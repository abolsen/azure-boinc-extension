#update packages
sudo apt-get update -y && sudo apt-get upgrade -y
#install libs and boinc
sudo apt-get install lib32z1 libstdc++6 freeglut3 boinc-client -y
#join boincstats
boinccmd --join_acct_mgr http://bam.boincstats.com [myuser] [mypassword]
#start boinc
sudo /etc/init.d/boinc-client start
#start boinc at boot time
sudo update-rc.d boinc-client defaults 98
#install boinctui
sudo apt-get install boinctui -y
