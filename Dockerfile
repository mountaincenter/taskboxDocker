FROM node:21.7.1

# npm と tree のインストール
RUN npm install -g npm@latest tree

# serve と vite のグローバルインストール
RUN yarn global add serve vite

WORKDIR /usr/src/app

# プロジェクトの依存関係のインストール
COPY package.json yarn.lock ./
RUN yarn install

# プロジェクトのソースコードをコピー
COPY . .
