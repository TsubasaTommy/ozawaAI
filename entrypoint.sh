#!/bin/sh

# プロジェクトディレクトリが存在しない場合にプロジェクトを作成
if [ ! -f "manage.py" ]; then
    echo "Djangoプロジェクトを作成中..."
    django-admin startproject ozawaAI .
fi

# 他のコマンドを実行
exec "$@"
