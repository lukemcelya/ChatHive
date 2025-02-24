#ifndef DATABASE_H
#define DATABASE_H

#include <sqlite3.h>
#include <string>
#include <iostream>

class Database
{
public:
    Database(const std::string& db_name);
    ~Database();

    bool register_user(const std::string& username, const std::string& password);
    bool login_user(const std::string& username, const std::string& password);

private:
    sqlite3* db;
    bool execute_query(const std::string& query);
};

#endif