#/bin/bash


// yum install ag
if ! [ -x "$(command -v git)" ]; then
   echo -e "\033[32m install ag\033[0m\n" 
   sudo yum install -y pcre-devel
   sudo yum install xz-devel
   cd /usr/local/src
   sudo git clone https://github.com/ggreer/the_silver_searcher.git
   cd the_silver_searcher
   sudo ./build.sh
   sudo make install
fi
