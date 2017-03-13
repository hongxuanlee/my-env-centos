#/bash/bin

echo -e "\033[32m install tmux\033[0m\n" 

if ! [ -x "$(command -v git)" ]; then
# install deps    
   yum install gcc kernel-devel make ncurses-devel

# install libevent   
   cd $DEPS_DIR
   curl -OL https://sourceforge.net/projects/levent/files/libevent/libevent-2.0/libevent-2.0.22-stable.tar.gz
   cd libevent-2.0.22-stable
   ./configure --prefix=/usr/local
   make
   sudo make install

# install tmux
   cd $DEPS_DIR
   curl -OL https://github.com/tmux/tmux/releases/download/2.1/tmux-2.1.tar.gz
   cd tmux-2.1
   LDFLAGS="-L/usr/local/lib -Wl,-rpath=/usr/local/lib" ./configure --prefix=/usr/local
   make
   sudo make install
fi


