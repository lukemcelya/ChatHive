#ifndef CHAT_SESSION_H
#define CHAT_SESSION_H

#include <boost/asio.hpp>
#include <memory>
#include <array>
#include <string>

// Forward declaration
class ChatRoom;

class ChatSession : public std::enable_shared_from_this<ChatSession>
{
public:
	ChatSession(boost::asio::ip::tcp::socket socket, ChatRoom &room)
		: socket_(std::move(socket)), room_(room) {}

	void start();
	void deliver(const std::string &message);

private:
	void do_read();
	void do_write(const std::string &message);

	boost::asio::ip::tcp::socket socket_;
	enum
	{
		max_length = 1024
	};
	std::array<char, max_length> data_;
	ChatRoom &room_;
};

#endif