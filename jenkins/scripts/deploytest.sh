#!/usr/bin/env sh 

read -d '' wait_for << EOF
echo "Waiting for API to listen to port 3000"
while ! nc -z api 3000; do 
  sleep 0.1 
  printf "."
done
echo  "API  ready on port 3000"
EOF

docker container run --rm  --net test-net node:12.10-alpine sh -c "$wait_for"

echo "Smokte test"

docker container run --name tester --rm --net test-net jdocker sh -c "curl api:3000"
