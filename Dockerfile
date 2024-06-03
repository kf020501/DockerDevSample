FROM ubuntu:22.04

# 更新してPython 3.10、pip、およびGitをインストール
RUN apt-get update && apt-get install -y sudo python3.10 python3-pip git

# ユーザーを作成 以降の作業はこのユーザーで実行される
RUN useradd -m -s /bin/bash user && echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER user
WORKDIR /home/user/work

# 現在のディレクトリの内容をコンテナのworkにコピー
COPY . /home/user/work

# requirements.txtに指定された必要なパッケージをインストール
RUN pip3 install --no-cache-dir -r requirements.txt

# ポート80をコンテナ外に公開
EXPOSE 80

# コンテナを稼働させ続ける
CMD ["tail", "-f", "/dev/null"]docker