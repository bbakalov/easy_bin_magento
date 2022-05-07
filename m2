#!/usr/bin/env bash
# don't forget to click "star" in github https://github.com/bbakalov/easy_bin_magento

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
    php74 bin/magento cache:flush
elif [ "$1" == "2" ]; then
    php74 bin/magento setup:di:compile
    php74 tools/Telegram/SetupDiCompile.php
elif [ "$1" == "3" ]; then
    php74 bin/magento setup:upgrade
    php74 tools/Telegram/SetupUpgrade.php
elif [ "$1" == "4" ]; then
    php74 bin/magento setup:static-content:deploy
    php74 tools/Telegram/SetupStaticContentDeploy.php
else
    php74 bin/magento $@
fi
