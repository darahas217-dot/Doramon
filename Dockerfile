FROM node:18-alpine
USER root
RUN apk add --no-cache git python3 py3-pip make g++ build-base cairo-dev pango-dev chromium
ENV PUPPETEER_SKIP_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
RUN npm install -g flowise
RUN mkdir -p /data && chmod -R 777 /data
WORKDIR /data
CMD ["npx", "flowise", "start"]

