FROM ubuntu:22.04

# 更新してPython 3.10、pip、およびGitをインストール
RUN apt-get update && apt-get install -y python3.10 python3-pip git

# ユーザーを作成 以降の作業はこのユーザーで実行される
RUN useradd -m -s /bin/bash user
USER user
WORKDIR /home/user/work

# 現在のディレクトリの内容をコンテナの/appにコピー
COPY . /home/user/work

# requirements.txtに指定された必要なパッケージをインストール
RUN pip3 install --no-cache-dir -r requirements.txt

# ポート80をコンテナ外に公開
EXPOSE 80

# コンテナを稼働させ続ける
CMD ["tail", "-f", "/dev/null"]docker