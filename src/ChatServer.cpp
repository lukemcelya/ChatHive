#include "ChatServer.hpp"
#include "ChatSession.hpp"
#include <memory>

ChatServer::ChatServer(boost::asio::io_context& io_context, const boost::asio::ip::tcp::endpoint& endpoint, Database& db)
    : acceptor_(io_context, endpoint), ssl_context_(boost::asio::ssl::context::sslv23), db(db)
{
    ssl_context_.set_options(boost::asio::ssl::context::default_workarounds
                             | boost::asio::ssl::context::no_sslv2
                             | boost::asio::ssl::context::single_dh_use);
    ssl_context_.use_certificate_chain_file("../data/server.crt");
    ssl_context_.use_private_key_file("../data/server.key", boost::asio::ssl::context::pem);    

    do_accept();
}

void ChatServer::do_accept() {
    acceptor_.async_accept([this](boost::system::error_code ec, boost::asio::ip::tcp::socket socket) {
        if (!ec) {
            auto ssl_socket = std::make_shared<boost::asio::ssl::stream<boost::asio::ip::tcp::socket>>(std::move(socket), ssl_context_);
            std::make_shared<ChatSession>(std::move(*ssl_socket), room_, db)->start();
        }
        do_accept();
    });
}
