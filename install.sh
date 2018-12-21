#!/bin/bash

# libevent 2.1.8
wget https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz
tar xzvf libevent-2.1.8-stable.tar.gz
cd libevent-2.1.8-stable
./configure & make -j8
sudo make install



sudo apt-get install autotools-dev  -y
sudo apt-get install automake  -y
sudo apt-get install libncurses5-dev -y


git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make -j8
sudo make install


# will be master
tmux -V

# 编译出来的程序在 tmux 目录内，这里假设你还没离开 tmux 目录
sudo cp tmux /usr/bin/tmux -f
sudo cp tmux /usr/local/bin/tmux -f
