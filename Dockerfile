FROM node:12.18.1@sha256:2b85f4981f92ee034b51a3c8bb22dbb451d650d5c12b6439a169f8adc750e4b6
ENV NODE_ENV=production

WORKDIR /app

# ARG VCS_REF
# ARG VCS_URL
# ARG REVISION
# ARG SOURCE
# LABEL org.label-schema.vcs-ref=$VCS_REF
# LABEL org.label-schema.vcs-url=$VCS_URL
# LABEL org.opencontainers.image.revision=$REVISION
# LABEL org.opencontainers.image.source=$SOURCE

COPY ["package.json", "package-lock.json*", "index.js", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "index.js" ]
