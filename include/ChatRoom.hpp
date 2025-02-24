#ifndef CHAT_ROOM_H
#define CHAT_ROOM_H

#include <set>
#include <map>
#include <memory>
#include <string>

class ChatSession;

class ChatRoom 
{
public:
    void join(const std::string& roomName, std::shared_ptr<ChatSession> session);
    void leave(const std::string& roomName, std::shared_ptr<ChatSession> session);
    void deliver(const std::string& roomName, const std::string& message, std::shared_ptr<ChatSession> sender);

private:
    std::map<std::string, std::set<std::shared_ptr<ChatSession>>> rooms_;
};

#endif