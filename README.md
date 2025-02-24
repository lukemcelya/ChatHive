# Mult-Room Chat Server (C++ with Boost.Asio & SQLite)

## Overview
This is a **multi-room chat server** built in C++ using **Boost.Asio** for asynchronous networking and **SQLite**
for user authentication. Users can register, log in, join rooms, and chat in real-time.

## Features
* **Multi-Room Support** - Users can create and join different chat rooms dynamically.
* **User Authentication** - Secure login and registration using SQLite.
* **Asynchronous Networking** - Efficient, non-blocking communication with Boost.Asio.
* **Thread-Safe Database Access** - Ensures consistent user data management.
* **Expandable** - Future updates will include encryption, file sharing, and a GUI client.

## Installation & Setup
1. **Install dependencies**
**macOS (Homebrew)**
```sh
brew install boost sqlite sqlitecpp
```
**Ubuntu/Debian**
```sh
sudo apt install libboost-dev libboost-system-dev libsqlite3-dev
```
2. **Clone the Repository**
```sh
git clone https://github.com/lukemcelya/ChatHive.git
cd ChatHive
```
3. **Build the Project**
```sh
mkdir -p build && cd build
cmake ..
cmake --build .
```
4. **Run the Chat Server**
```sh
./ChatHive
```
Expected output:
```sh
'Database connected successfully.'
'Chat server started on port 8080'
```
5. **Connect to the Server**
Open two or more terminal windows and run:
```sh
nc localhost 8080 # Use Netcat
```
Or install `telnet` (if needed) and use:
```sh
telnet localhost 8080
```
6. **Register & Login**
```sh
/register <username> <password>
/login <username> <password>
```
After logging in, you can **switch rooms** and **send messages:**
```sh
/join <channel>
'Hello everyone!'
```
