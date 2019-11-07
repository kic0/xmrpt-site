#/bin/bash
echo "install xmr-stak cpu only";
sleep 3
apt update -y;
apt install -y libssl-dev cmake build-essential git;
apt install -y libhwloc-dev libmicrohttpd-dev; 
apt install -y screen; 
cd ~;
rm -rf ~/xmr-stak/;
git clone https://github.com/fireice-uk/xmr-stak.git;
mv ~/xmr-stak/xmrstak/donate-level.hpp ~/xmr-stak/xmrstak/donate-level.hpp.bak;
wget http://xmr.pt/files/xmrstack/donate-level.hpp -O ~/xmr-stak/xmrstak/donate-level.hpp;
mkdir ~/xmr-stak/build;
cd ~/xmr-stak/build;
cmake .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF;
make install;
cd ~/xmr-stak/build/bin/;
rm *.txt;
wget http://xmr.pt/files/xmrstack/cpu.txt;
wget http://xmr.pt/files/xmrstack/config.txt;
wget http://xmr.pt/files/xmrstack/pools.txt;
screen -S mine
./xmr-stack
