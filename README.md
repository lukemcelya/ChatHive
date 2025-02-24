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
### 1. <ins>Install dependencies</ins>
**macOS (Homebrew)**
```sh
brew install boost sqlite sqlitecpp
```
**Ubuntu/Debian**
```sh
sudo apt install libboost-dev libboost-system-dev libsqlite3-dev
```
**Windows (vcpkg)**
1. Install vcpkg (if not installed):
```sh
git clone https://github.com/microsoft/vcpkg.git
cd vcpkg
./bootstrap-vcpkg.bat # Windows
./bootstrap-vcpkg.sh # macOS/Linux
```
2. Install dependencies:
```sh
vcpkg install boost-asio boost-system sqlite3 sqlitecpp
```

### 2. <ins>Clone the Repository</ins>
```sh
git clone https://github.com/lukemcelya/ChatHive.git
cd ChatHive
```
### 3. <ins>Build the Project with CMake</ins>
```sh
mkdir -p build && cd build
cmake ..
cmake --build .
```
### 4. <ins>Run the Chat Server</ins>
```sh
./ChatHive
```
Expected output:
```sh
'Database connected successfully.'
'Chat server started on port 8080'
```
### 5. <ins>Connect to the Server</ins>
Open two or more terminal windows and run:
```sh
nc localhost 8080 # Use Netcat
```
Or install `telnet` (if needed) and use:
```sh
telnet localhost 8080
```
### 6. <ins>Register & Login</ins>
```sh
/register <username> <password>
/login <username> <password>
```
After logging in, you can **switch rooms** and **send messages:**
```sh
/join <channel>
'Hello everyone!'
```
## Roadmap
* **TLS Encryption** - Secure chat messages with OpenSSL.
* **GUI Client (Qt)** - A user-friendly graphical interface.
* **File Sharing** - Send images and documents.
* **Performance Improvements** - Multi-threading for high concurrency.

## Contributing
Want to contribute? Feel free to fork, submit PRs, or report issues!

## License
MIT License. Free to use and modify. See the `LICENSE` file for details.

### Third-party License
This project licenses:
- **Bost.Asio** (under the [Boost Software License](https://www.boost.org/LICENSE_1_0.txt))
- **SQLite** (Public Domain)