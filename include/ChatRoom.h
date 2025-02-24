#ifndef CHAT_ROOM_H
#define CHAT_ROOM_H

#include <set>
#include <memory>
#include <string>

class ChatSession;

class ChatRoom 
{
public:
    void join(std::shared_ptr<ChatSession> session);
    void leave(std::shared_ptr<ChatSession> session);
    void deliver(const std::string& message);

private:
    std::set<std::shared_ptr<ChatSession>> sessions_;
};

#endif