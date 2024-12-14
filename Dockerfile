# ベースイメージ
FROM ruby:2.7.8

# 必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# 作業ディレクトリの設定
WORKDIR /app

# Gemfile と Gemfile.lock をコピー
COPY Gemfile Gemfile.lock ./

# Bundler の互換バージョンをインストール
RUN gem install bundler -v 2.4.22 && bundle _2.4.22_ install

# アプリのソースコードをコピー
COPY . .

# サーバー起動用のエントリポイントスクリプトをコピー
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# サーバーポートを公開
EXPOSE 3000

# Rails サーバーを起動
CMD ["rails", "server", "-b", "0.0.0.0"]
