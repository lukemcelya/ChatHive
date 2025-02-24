#include "ChatRoom.h"
#include "ChatSession.h"
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

void ChatRoom::deliver(const std::string& roomName, const std::string& message)
{
    if (rooms_.find(roomName) != rooms_.end())
    {
        for (auto session : rooms_[roomName])
        {
            session->deliver(message);
        }
    }
}