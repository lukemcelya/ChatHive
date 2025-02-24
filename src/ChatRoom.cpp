#include "ChatRoom.h"
#include "ChatSession.h"

void ChatRoom::join(std::shared_ptr<ChatSession> session)
{
    sessions_.insert(session);
}

void ChatRoom::leave(std::shared_ptr<ChatSession> session)
{
    sessions_.erase(session);
}

void ChatRoom::deliver(const std::string& message)
{
    for (auto session : sessions_)
    {
        session->deliver(message);
    }
}