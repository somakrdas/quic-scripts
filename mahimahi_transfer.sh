#! /bin/bash

F_OPEN_LOGS=0

# What file to GET
if [ -z "$1" ]
then
  GET_FILE=rock.jpg
else
  GET_FILE=$1
fi

# --log for logging, anything else (--no-log) for no logging
if [ "$2" = "--log" ]
then
  SERVER_LOG_FILE=/tmp/server.log
  CLIENT_LOG_FILE=/tmp/client.log
  F_OPEN_LOGS=1
else
  SERVER_LOG_FILE=/dev/null
  CLIENT_LOG_FILE=/dev/null
fi

# --release for Release, anything else (--debug) for Debug
if [ "$3" = "--release" ]
then
  BUILD=Release
else
  BUILD=Debug
fi

if [ "$4" = "--server" ]
then
  ./src/out/$BUILD/quic_server --quic_in_memory_cache_dir=tmp-quic-server --port=6121 > $SERVER_LOG_FILE 2>&1 &
else
  if [ "$4" = "--client" ]
  then
    time ./src/out/$BUILD/quic_client --address=18.189.6.14 --port=6121 http://tmp-quic-server/$GET_FILE > $CLIENT_LOG_FILE 2>&1
  else
    time wget http://18.189.6.14/$GET_FILE
    rm $GET_FILE*
  fi
fi

echo
echo "GET_FILE:       " $GET_FILE
echo "SERVER_LOG_FILE:" $SERVER_LOG_FILE
echo "CLIENT_LOG_FILE:" $CLIENT_LOG_FILE
echo "BUILD:          " $BUILD
echo
