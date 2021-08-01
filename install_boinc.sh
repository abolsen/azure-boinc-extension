#update packages
sudo apt-get update -y && sudo apt-get upgrade -y
#install stuff
sudo apt-get install lib32z1 libstdc++6 freeglut3 boinc-client boinctui virtualbox -y
#join boincstats (weak authentication - below is not an account password, it merely let's anyone join computers to a specific account)
boinccmd --join_acct_mgr http://bam.boincstats.com 241003_d87f9510554144e6ca8fce0f87929670
#start boinc
sudo /etc/init.d/boinc-client start
#start boinc at boot time
sudo update-rc.d boinc-client defaults 98
