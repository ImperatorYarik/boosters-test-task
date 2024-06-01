GREEN='\033[0;32m'
NC='\033[0m'
RED='\033[0;31m'
docker build -t go-app .
docker run -d -p 8080:8080 --name go-web-server go-app

sleep 10

STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8080/ping)
if [ "$STATUS_CODE" -eq 200 ]; then
  echo "HTTP status code:${GREEN} ${STATUS_CODE}${NC}"
else
  echo "HTTP status code: ${RED} ${STATUS_CODE}${NC}"
fi

echo "-------------------------------"
