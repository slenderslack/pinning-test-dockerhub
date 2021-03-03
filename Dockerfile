FROM node:12.18.1
ENV NODE_ENV=production

WORKDIR /app

ARG VCS_REF
LABEL org.label-schema.vcs-ref=$VCS_REF

COPY ["package.json", "package-lock.json*", "index.js", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "index.js" ]
