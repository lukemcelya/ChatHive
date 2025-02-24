/*
*/
#include <boost/asio.hpp>
#include <iostream>
#include "ChatServer.hpp"

int main()
{
    try
    {
        boost::asio::io_context io_context;
        boost::asio::ip::tcp::endpoint endpoint(boost::asio::ip::tcp::v4(), 8080);
        ChatServer server(io_context, endpoint);
        std::cout << "Chat server started on port 8080\n";
        io_context.run();
    } catch (std::exception& e)
    {
        std::cerr << "Exception: " << e.what() << "\n";
    }

    return 0;
}