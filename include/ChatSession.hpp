#ifndef CHAT_SESSION_H
#define CHAT_SESSION_H

#include <boost/asio.hpp>
#include <boost/asio/ssl.hpp>
#include <memory>
#include <array>
#include <string>

// Forward declaration
class ChatRoom;
class Database;

class ChatSession : public std::enable_shared_from_this<ChatSession>
{
public:
	ChatSession(boost::asio::ssl::stream<boost::asio::ip::tcp::socket> socket, ChatRoom& room, Database& db);

	void start();
	void deliver(const std::string &message);

private:
	void do_read();
	void do_write(const std::string &message);
	void handle_command(const std::string &command);

	boost::asio::ssl::stream<boost::asio::ip::tcp::socket> ssl_socket_;
	enum
	{
		max_length = 1024
	};
	std::array<char, max_length> data_;
	ChatRoom &room_;
	std::string current_room_;
	Database& db;
	bool authenticated;
};

#endif