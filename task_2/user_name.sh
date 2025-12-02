#!/bin/bash
echo "current user name is : $(whoami)"
echo "present working directory : $(pwd)"

echo "APP_ENV: ${APP_ENV:-default}"
