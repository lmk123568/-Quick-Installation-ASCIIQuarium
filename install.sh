if [ `whoami` = "root" ];then
	# Installing dependencies
	apt-get -y install libcurses-perl
	apt-get -y install make

	# Installing Term-Animation
	cd Term-Animation/
	perl Makefile.PL
	make
	make test
	make install

	# Installing ASCIIQuarium
	cd ..
	cp asciiquarium /usr/local/bin
	chmod 0755 /usr/local/bin/asciiquarium
else
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
fi

# Run ASCIIQuarium
asciiquarium