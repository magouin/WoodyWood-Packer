FROM  debian:wheezy

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y gcc git make nasm vim gdb curl
RUN curl 'https://raw.githubusercontent.com/JeremShy/RainFall/master/config' | tail -n +2 > /root/.gdbinit
RUN apt-get install -y bsdmainutils
RUN apt-get install -y man
RUN apt-get install -y zsh
RUN apt-get install -y clang
RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true
RUN git config --global user.email "jcamhi@student.42.fr"

CMD cd /bind/woody ;  /bin/zsh
