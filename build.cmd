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

## Manually build the Console example program
g++ -DNDEBUG main.cpp -o sio_console_demo -rdynamic libsioclient.a -lpthread -Wl,-Bstatic -lboost_system -lboost_date_time -lboost_random -Wl,-Bdynamic -std=gnu++11 -Wl,-rpath,/home/hexiongjun/Projects/TelinkBLETest/Socket.IO/socket.io-client-cpp/build/lib/Release -I /home/hexiongjun/Projects/TelinkBLETest/Socket.IO/socket.io-client-cpp/build/include


## Verbose build
make VERBOSE=1
