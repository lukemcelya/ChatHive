@echo off
set SSL_DIR=data

:: Create SSL directory if not exists
if not exist %SSL_DIR% mkdir %SSL_DIR%

echo Generating SSL keys and self-signed certificate...

:: Generate private key
openssl genrsa -out %SSL_DIR%\server.key 2048

:: Generate self-signed certificate
openssl req -new -x509 -key %SSL_DIR%\server.key -out %SSL_DIR%\server.crt -days 365 -subj "/CN=localhost"

echo SSL certificate and key generated in '%SSL_DIR%'
dir %SSL_DIR%\server.*
pause