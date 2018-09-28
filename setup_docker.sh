#!/bin/bash

if !(command -v docker >&-) || !(command -v docker-machine >&-) ; then
	echo -e "\033[0;31mError: \033[0mPlease install the docker and docker-machine binaries on your system."
	exit 1
fi

if ! (docker-machine ls | grep Char >&-) ; then
	echo "The Char machine has to be created."
	docker-machine create Char --driver virtualbox || exit 2
fi

if ! (docker-machine ls | grep Char | grep Running >&- ) ; then
	echo "The Char machine has to be started"
	docker-machine start Char || exit 3
fi

echo -e "\nYou should run the command eval \$(docker-machine env Char) before running ./run.sh\n"
eval $(docker-machine env Char)
docker build -t woody . || exit 4
