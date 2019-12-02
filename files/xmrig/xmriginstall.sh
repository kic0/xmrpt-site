apt-get install -y git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev
apt-get install -y libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
wget http://xmr.pt/files/xmrig/config.json