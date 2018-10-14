docker run --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -t -i --name woody_test -v "/Users/$(whoami)/Docker_binded":/bind --rm woody
