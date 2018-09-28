FROM  debian

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y gcc git make nasm vim gdb curl
RUN curl 'https://raw.githubusercontent.com/JeremShy/RainFall/master/config' | tail -n +2 > /root/.gdbinit
RUN apt-get install -y zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true

CMD cd /bind/woody ;  /bin/zsh
