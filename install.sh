# Installing dependencies
sudo apt-get -y install libcurses-perl
sudo apt-get -y install make

# Installing Term-Animation
tar -xvf Term-Animation.tar
cd Term-Animation/

perl Makefile.PL
make
make test
make install

# Installing ASCIIQuarium
sudo cp asciiquarium /usr/local/bin
sudo chmod 0755 /usr/local/bin/asciiquarium

# Run ASCIIQuarium
asciiquarium
