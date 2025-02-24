#ifndef CHAT_SERVER_H
#define CHAT_SERVER_H

#include <boost/asio.hpp>
#include <boost/asio/ssl.hpp>
#include "ChatRoom.hpp"
#include "Database.hpp"

class ChatServer
{
public:
    ChatServer(boost::asio::io_context& io_context, const boost::asio::ip::tcp::endpoint& endpoint, Database& db);

private:
    void do_accept();

    boost::asio::ip::tcp::acceptor acceptor_;
    boost::asio::ssl::context ssl_context_;
    ChatRoom room_;
    Database& db;
};

#endif