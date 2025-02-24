#include "ChatServer.hpp"
#include "ChatSession.hpp"
#include <memory>

ChatServer::ChatServer(boost::asio::io_context& io_context, const boost::asio::ip::tcp::endpoint& endpoint, Database& db)
    : acceptor_(io_context, endpoint), db(db)
{
    do_accept();
}

void ChatServer::do_accept()
{
    acceptor_.async_accept([this](boost::system::error_code ec, boost::asio::ip::tcp::socket socket)
    {
        if (!ec)
        {
            std::make_shared<ChatSession>(std::move(socket), room_, db)->start();
        }

        do_accept();
    }); 
}