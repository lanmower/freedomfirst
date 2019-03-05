How to become a block producer:

# Step 1: install EOSIO

Mac OS X Brew Install

$ brew tap eosio/eosio
$ brew install eosio

Mac OS X Brew Uninstall

$ brew remove eosio

Ubuntu 18.04 Debian Package Install

$ wget https://github.com/eosio/eos/releases/download/v1.6.2/eosio_1.6.2-1-ubuntu-18.04_amd64.deb
$ sudo apt install ./eosio_1.6.2-1-ubuntu-18.04_amd64.deb

Ubuntu 16.04 Debian Package Install

$ wget https://github.com/eosio/eos/releases/download/v1.6.2/eosio_1.6.2-1-ubuntu-16.04_amd64.deb
$ sudo apt install ./eosio_1.6.2-1-ubuntu-16.04_amd64.deb

Debian Package Uninstall

$ sudo apt remove eosio

Centos RPM Package Install

$ wget https://github.com/eosio/eos/releases/download/v1.6.2/eosio-1.6.2-1.el7.x86_64.rpm
$ sudo yum install ./eosio-1.6.2-1.el7.x86_64.rpm

Centos RPM Package Uninstall

$ sudo yum remove eosio.cdt

Fedora RPM Package Install

$ wget https://github.com/eosio/eos/releases/download/v1.6.2/eosio-1.6.2-1.fc27.x86_64.rpm
$ sudo yum install ./eosio-1.6.2-1.fc27.x86_64.rpm

Fedora RPM Package Uninstall

$ sudo yum remove eosio.cdt

Supported Operating Systems

EOSIO currently supports the following operating systems:

    Amazon 2017.09 and higher
    Centos 7
    Fedora 25 and higher (Fedora 27 recommended)
    Mint 18
    Ubuntu 16.04 (Ubuntu 16.10 recommended)
    Ubuntu 18.04
    MacOS Darwin 10.12 and higher (MacOS 10.13.x recommended)

# STEP 2: install freedomfirst scripts

git clone https://github.com/lanmower/FreedomFirst-bp.git

# STEP 3: configure

Ensure that you have a valid freedom first account before you begin.

in the directory of the project, run ./configure.sh

specify your account details as it asks for it

when complete, run ./genesis_start.sh
leave it running for a minute or so, then run ./stop.sh, wait for it to end and then ./start.sh

Your node should now be ready for action!
