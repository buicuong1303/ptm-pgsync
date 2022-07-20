#! /bin/sh
# wait for connect

# ./wait-for-it.sh postgres:5432 -t 30
# ./wait-for-it.sh elasticsearch:9200 -t 90
# ./wait-for-it.sh redis:6379 -t 60

bootstrap --config schemas/message/schema.json
pgsync --config schemas/message/schema.json --daemon
