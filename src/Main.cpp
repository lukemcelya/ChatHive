/*
*/
#include <boost/asio.hpp>
#include <iostream>
#include "ChatServer.hpp"
#include "Database.hpp"
#include <filesystem>

int main()
{
    try
    {
        //Database path
        std::string dbPath = "../data/chat_users.db";
        if (!std::filesystem::exists("../data"))
        {
            std::filesystem::create_directory("../data"); //Create data directory
            std::cout << "Created directory for user database.\n";
        }

        Database db(dbPath);

        boost::asio::io_context io_context;
        boost::asio::ip::tcp::endpoint endpoint(boost::asio::ip::tcp::v4(), 8080);
        ChatServer server(io_context, endpoint, db);
        std::cout << "Chat server started on port 8080\n";
        io_context.run();
    } catch (std::exception& e)
    {
        std::cerr << "Exception: " << e.what() << "\n";
    }

    return 0;
}