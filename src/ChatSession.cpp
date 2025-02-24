#include "ChatSession.hpp"
#include "ChatRoom.hpp"
#include "Database.hpp"
#include <iostream>


void ChatSession::start()
{
	// Join room when session starts
	room_.join(current_room_, shared_from_this());
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

									if (msg.rfind("/", 0) == 0) {  // Check if message starts with "/"
										handle_command(msg);
									} else {
										room_.deliver(current_room_, msg, shared_from_this());
									}

									do_read();
								}
								else
								{
									room_.leave(current_room_, shared_from_this());
								}
							});
}

void ChatSession::do_write(const std::string &message)
{
	auto self(shared_from_this());
	boost::asio::async_write(socket_, boost::asio::buffer(message),
							 [this, self](boost::system::error_code ec, std::size_t /*length*/)
							 {
								 if (ec)
								 {
									 room_.leave(current_room_, shared_from_this());
								 }
							 });
}

void ChatSession::handle_command(const std::string &command)
{
	std::istringstream iss(command);
	std::string cmd, username, password;

	iss >> cmd >> username >> password;

	if (cmd == "/register")
	{
	    if (username.empty() || password.empty())
	    {
	        deliver("Usage: /register <username> <password>\n");
			return;
	    }

		if (db.register_user(username, password))
		{
		    deliver("Registration successful! Please log in.\n");
		}
		else
		{
		    deliver("Username already exists. Please try again.\n");
		}
	}
	else if (cmd == "/login")
	{
	    if (username.empty() || password.empty())
	    {
	        deliver("Usage: /login <username> <password>\n");
	    }

		if (db.login_user(username, password))
		{
			authenticated = true;
		    deliver("Login successful!\n");
		}
		else
		{
		    deliver("Invalid username or password.\n");
		}
	}
	else if (!authenticated)
	{
	    deliver("Please login first using '/login {username} {password}'.\n");
	}
	else
	{
	    if (command.rfind("/join", 0) == 0) //Trying to join room
		{
			std::string roomName = command.substr(6);
			room_.leave(current_room_, shared_from_this());//Leave current room
			current_room_ = roomName;
			room_.join(current_room_, shared_from_this());//Join new room
			deliver("Switched to room: " + current_room_ + "\n");
		}
		else if (command.rfind("/leave" , 0) == 0)//Leave current room
		{
	    	std::string roomName = "default";
			room_.leave(current_room_, shared_from_this());
			current_room_ = roomName;
			room_.join(current_room_, shared_from_this());
			deliver("Switched to room: " + current_room_ + "\n");
		}
	}
	
}