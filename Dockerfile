FROM node:16.14.2-alpine AS base

WORKDIR /app
COPY [ "package.json", "yarn.lock*", "./" ]
FROM base AS pro
ENV NODE_ENV=pro
RUN yarn install --frozen-lockfile
COPY . .
CMD [ "yarn", "start:dev" ]

