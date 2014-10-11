#!/bin/sh
exec /sbin/setuser app /usr/bin/mongod --config /app/mongodb/mongod.conf
