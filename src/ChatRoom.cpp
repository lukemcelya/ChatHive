#include "ChatRoom.hpp"
#include "ChatSession.hpp"
#include <iostream>

void ChatRoom::join(const std::string& roomName, std::shared_ptr<ChatSession> session)
{
    rooms_[roomName].insert(session);
    std::cout << "User joined room: " << roomName << "\n";
}

void ChatRoom::leave(const std::string& roomName, std::shared_ptr<ChatSession> session)
{
    if (rooms_.find(roomName) != rooms_.end())
    {
        rooms_[roomName].erase(session);

        //Remove empty rooms
        if (rooms_[roomName].empty())
        {
            rooms_.erase(roomName);
        }
    }
}

void ChatRoom::deliver(const std::string& roomName, const std::string& message, std::shared_ptr<ChatSession> sender)
{
    if (rooms_.find(roomName) != rooms_.end())
    {
        for (auto session : rooms_[roomName])
        {
            if (session != sender) //Don't display message to sender in terminal
            session->deliver(message);
        }
    }
}