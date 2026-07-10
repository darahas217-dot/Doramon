FROM node:18-alpine
USER root
RUN apk add --no-cache git python3 py3-pip make g++ build-base cairo-dev pango-dev chromium
ENV PUPPETEER_SKIP_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# Force Node to optimize memory utilization
ENV NODE_OPTIONS="--max-old-space-size=400"

RUN npm install -g flowise --omit=dev
WORKDIR /data
CMD ["npx", "flowise", "start"]


