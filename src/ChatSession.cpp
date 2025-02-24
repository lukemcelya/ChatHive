#include "ChatSession.h"
#include "ChatRoom.h"
#include <iostream>

void ChatSession::start()
{
	// Join room when session starts
	room_.join(shared_from_this());
	do_read();
}

void ChatSession::deliver(const std::string &message)
{
	do_write(message);
}

void ChatSession::do_read()
{
	auto self(shared_from_this());
	socket_.async_read_some(boost::asio::buffer(data_),
							[this, self](boost::system::error_code ec, std::size_t length)
							{
								if (!ec)
								{
									std::string msg(data_.data(), length);

									// Broadcast the message
									room_.deliver(msg);
									do_read();
								}
								else
								{
									room_.leave(shared_from_this());
								}
							});
}

void ChatSession::do_write(const std::string &message)
{
	auto self(shared_from_this());
	boost::asio::async_write(socket_, boost::asio::buffer(message),
							 [this, self](boost::system::error_code ec, std::size_t length)
							 {
								 if (ec)
								 {
									 room_.leave(shared_from_this());
								 }
							 });
}