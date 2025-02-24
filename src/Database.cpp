#include "Database.hpp"
#include <iostream>
#include <sstream>

Database::Database(const std::string& db_name)
{
    if (sqlite3_open(db_name.c_str(), &db) != SQLITE_OK)
    {
        std::cerr << "Failed to open database: " << sqlite3_errmsg(db) << "\n";
    }
    else
    {
        std::cout << "Database connected successfully.\n";
    }

    //Create table if it doesn't exist
    std::string createTableQuery = "CREATE TABLE IF NOT EXISTS users ("
                                   "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                                   "username TEXT UNIQUE, "
                                   "password TEXT);";
    execute_query(createTableQuery);
}

Database::~Database()
{
    //Don't forget to close the db :)
    sqlite3_close(db);
}

bool Database::execute_query(const std::string& query)
{
    char* error_msg = nullptr;
    if (sqlite3_exec(db, query.c_str(), nullptr, nullptr, &error_msg) != SQLITE_OK)
    {
        std::cerr << "SQL Error: " << error_msg << "'\n";
        sqlite3_free(error_msg);
        return false;
    }
    return true;
}

bool Database::register_user(const std::string& username, const std::string& password)
{
    std::ostringstream query;
    query << "INSERT INTO users (username, password) VALUES ('"
          << username << ", " << password << "');";
    return execute_query(query.str());
}

bool Database::login_user(const std::string& username, const std::string& password)
{
    std::ostringstream query;
    query << "SELECT COUNT(*) FROM users WHERE username = '"
          << username << "' AND password = '" << password << "';";

    //Verify query for login credentials
    sqlite3_stmt* stmt;
    if (sqlite3_prepare_v2(db, query.str().c_str(), -1, &stmt, nullptr) != SQLITE_OK)
    {
        std::cerr << "Could not run login query.\n";
        return false;
    }

    bool authenticated = false;
    if (sqlite3_step(stmt) == SQLITE_ROW && sqlite3_column_int(stmt, 0) > 0 )
    {
        authenticated = true;
    }

    //Finalize and return login status
    sqlite3_finalize(stmt);
    return authenticated;
}