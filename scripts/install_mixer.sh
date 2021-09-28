cd /tools
wget https://boostorg.jfrog.io/artifactory/main/release/1.69.0/source/boost_1_69_0.tar.gz
tar -xzvf boost_1_69_0.tar.gz && cd boost_1_69_0
./bootstrap.sh --with-libraries=program_options,filesystem,system,date_time
./b2 --clean && ./b2 cflags=-march=sandybridge cxxflags=-march=sandybridge --j12 -a
cd /tools
git clone --branch sandybridge --recurse-submodules -j8 https://github.com/precimed/mixer.git
mkdir mixer/src/build && cd mixer/src/build && cmake .. -DBoost_NO_BOOST_CMAKE=ON -DBOOST_ROOT=/tools/boost_1_69_0 && make -j16 bgmg
	
