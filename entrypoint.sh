#!/bin/bash

echo "bundling..."
bundle install

echo "creating database..."
rails db:create

echo "running database migrations..."
rails db:migrate

echo "clearing prior pids..."
rm ./tmp/pids/server.pid

echo "starting server..."
bundle exec unicorn -c config/unicorn.rb