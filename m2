#!/usr/bin/env bash

if [ "$1" == "-h" ] || [ "$1" == "h" ] || [ "$1" == "-help" ] || [ "$1" == "--help" ]; then
    GREEN='\033[0;32m'
    RED='\033[0;31m'
    NC='\033[0m' # No Color

    echo -e "${GREEN}m2 1${NC} | ${RED}cache:flush${NC}"
    echo -e "${GREEN}m2 2${NC} | ${RED}setup:di:compile${NC}"
    echo -e "${GREEN}m2 3${NC} | ${RED}setup:upgrade${NC}"
    echo -e "${GREEN}m2 4${NC} | ${RED}setup:static-content:deploy${NC}"
    echo -e "${GREEN}m2${NC}   | ${RED}write any other command${NC}"
elif [ "$1" == "1" ]; then
    php bin/magento cache:flush
elif [ "$1" == "2" ]; then
    php bin/magento setup:di:compile
elif [ "$1" == "3" ]; then
    php bin/magento setup:upgrade
elif [ "$1" == "4" ]; then
    php bin/magento setup:static-content:deploy
else
    php bin/magento $@
fi
