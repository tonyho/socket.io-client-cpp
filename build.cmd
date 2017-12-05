### Build the library
mkdir build
cd build
cmake ..
sudo apt-get install libwebsocketpp-dev 
sudo apt-get install rapidjson-dev 
sudo apt-get install libboost-dev libboost-date-time-dev libboost-random-dev libboost-system-dev libssl-dev
make -j5

## Build the example
cd ../examples/Console
cmake .
make

## Verbose build
make VERBOSE=1
