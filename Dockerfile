FROM node@sha256:c2dde707fbddb1ab87951229377b710352bc6a2f7b1d7eb5427dec994ddcc700
LABEL com.atomist.follow-tag=12.18.1
ENV NODE_ENV=production

WORKDIR /app

ARG VCS_REF
LABEL org.label-schema.vcs-ref=$VCS_REF

COPY ["package.json", "package-lock.json*", "index.js", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "index.js" ]
