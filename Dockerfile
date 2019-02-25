FROM shellphish/mechaphish

USER root

RUN apt-get update && apt-get dist-upgrade -y && \
    apt-get install -y byacc bison flex texinfo build-essential gcc g++ git libncurses5-dev libmpfr-dev pkg-config libipt-dev libbabeltrace-ctf-dev coreutils g++-multilib libc6-dev-i386 python3-dev && \
    mkdir -p /opt && cd /opt && git clone --depth 1 git://sourceware.org/git/binutils-gdb.git && cd binutils-gdb && \
    mkdir /opt/gdb && ./configure --prefix=/opt/gdb --with-python=python3 && \
    make -j`nproc` && make install
