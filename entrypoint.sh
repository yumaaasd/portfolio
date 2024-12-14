#!/bin/bash
set -e

# サーバー用の設定ファイルが存在しない場合、Rails を初期化
if [ ! -f tmp/pids/server.pid ]; then
  bundle exec rails db:create db:migrate
fi

exec "$@"
