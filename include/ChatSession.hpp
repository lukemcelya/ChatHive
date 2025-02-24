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
		: socket_(std::move(socket)), room_(room), current_room_("default") {}

	void start();
	void deliver(const std::string &message);

private:
	void do_read();
	void do_write(const std::string &message);
	void handle_command(const std::string &command);

	boost::asio::ip::tcp::socket socket_;
	enum
	{
		max_length = 1024
	};
	std::array<char, max_length> data_;
	ChatRoom &room_;
	std::string current_room_;
};

#endif