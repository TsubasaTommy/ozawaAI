# ベースイメージ
FROM python:3.9-slim

# 作業ディレクトリの設定
WORKDIR /app

# 依存関係をコピーしてインストール
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# プロジェクトファイルをコピー
COPY . /app/

# エントリーポイントスクリプトを追加
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# エントリーポイントとして指定
ENTRYPOINT ["/entrypoint.sh"]

# Djangoサーバーを実行
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]