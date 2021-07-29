#update packages
sudo apt-get update -y && sudo apt-get upgrade -y
#install libs and boinc
sudo apt-get install ia32-libs libstdc++6 freeglut3 boinc-client
#install libstdc++5 on late Ubuntu dists
wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-3.3/libstdc++5_3.3.6-17ubuntu1_i386.deb
sudo dpkg-deb -x libstdc++5_3.3.6-17ubuntu1_i386.deb ./tmp 
sudo cp ./tmp/usr/lib/* /usr/lib32/
#join boincstats
boinccmd --join_acct_mgr http://bam.boincstats.com [myuser] [mypassword]
#start boinc
/etc/init.d/boinc-client start
#start boinc at boot time
update-rc.d boinc-client defaults 98
