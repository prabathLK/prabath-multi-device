#!/bin/bash

GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${GREEN}=== PRABATH-MD BOT SETUP ===${NC}"
echo -e "Let's deploy your bot! / අපි ඔයාගේ Bot එක deploy කරමු!"
echo "-------------------------------------"

echo -e "${CYAN}1. Enter your SESSION ID / ඔයාගේ SESSION ID එක ඇතුලත් කරන්න:${NC}"
read SESSION_ID

echo -e "${CYAN}2. Enter your Bot Number (e.g., 947xxxxxx) / Bot ගේ නම්බර් එක (උදා: 947xxxxxx):${NC}"
read BOT_NUMBER

echo -e "${CYAN}3. Enter MongoDB/Database URL / MongoDB හෝ Database URL එක:${NC}"
read DATABASE

echo "-------------------------------------"
echo -e "${GREEN}Saving configuration... / සැකසුම් save කරමින් පවතී...${NC}"

rm -f .env
touch .env

echo "SESSION_ID=$SESSION_ID" >> .env
echo "BOT_NUMBER=$BOT_NUMBER" >> .env
echo "DATABASE=$DATABASE" >> .env

echo -e "${GREEN}Starting Docker... / Docker start කරමින්...${NC}"

docker-compose up -d --build

echo "-------------------------------------"
echo -e "${GREEN}✅ Bot Deployed Successfully! / Bot සාර්ථකව run විය!${NC}"
echo -e "Check logs with: 'docker-compose logs -f'"
