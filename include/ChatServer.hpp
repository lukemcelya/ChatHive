#ifndef CHAT_SERVER_H
#define CHAT_SERVER_H

#include <boost/asio.hpp>
#include "ChatRoom.hpp"
#include "Database.hpp"

class ChatServer
{
public:
    ChatServer(boost::asio::io_context& io_context, const boost::asio::ip::tcp::endpoint& endpoint);

private:
    void do_accept();

    boost::asio::ip::tcp::acceptor acceptor_;
    ChatRoom room_;
    Database& db;
};

#endif