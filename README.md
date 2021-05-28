# README
	RUBY: 3.0.0
	RAILS:


	# INSTALL PREREQUISITES
		sudo apt install curl g++ gcc autoconf automake bison libc6-dev \
        libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool \
        libyaml-dev make pkg-config sqlite3 zlib1g-dev libgmp-dev \
        libreadline-dev libssl-dev


    # INSTALL RUBY VERSION
    	gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

    	## READ THE OUTPUT AND FOLLOW THE INSTRUCTIONS!
    	curl -sSL https://get.rvm.io | bash -s stable
    	## READ THE OUTPUT AND FOLLOW THE INSTRUCTIONS!
    		### HINT: source /home/pete/.rvm/scripts/rvm

    	rvm list known

    	rvm install ruby

    	rvm --default use ruby

    	# cd in to app directory and install bundler.
    	gem install bundler

    	bundle install
