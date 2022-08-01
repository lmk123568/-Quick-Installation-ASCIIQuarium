# Installing dependencies
sudo apt-get -y install libcurses-perl
sudo apt-get -y install make

# Installing Term-Animation
cd Term-Animation/
sudo perl Makefile.PL
sudo make
sudo make test
sudo make install

# Installing ASCIIQuarium
cd ..
sudo cp asciiquarium /usr/local/bin
sudo chmod 0755 /usr/local/bin/asciiquarium

# Run ASCIIQuarium
asciiquarium
