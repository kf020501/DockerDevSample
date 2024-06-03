# DockerDevSample

## 概要

Dockerベースの開発環境サンプルです。   
Ubuntu 22.04をベースとして、Dockerコンテナ内でPythonを扱うためのシンプルなセットアップを提供します。

- ベースイメージとしてUbuntu 22.04。
- Python 3.10が事前にインストールされています。
- バージョン管理のためのGitが含まれています。
- Pythonでのサンプルアプリケーションのセットアップ（他の言語のセットアップに置き換え可能）。

## インストール
1. リポジトリをクローンします：
    ```
    git clone https://github.com/your-username/DockerDevSample.git
    ```
2. Dockerイメージをビルドします：
    ```
    docker build -t docker-dev-sample .
    ```
3. Dockerコンテナを実行します：
    ```
    docker run -d -p 4000:80 docker-dev-sample
    ```

## 使用方法

Dockerfileや含まれているファイルを変更して、開発ニーズに合わせてください。      
このテンプレートは、任意のDockerベースの開発環境のための出発点です。
