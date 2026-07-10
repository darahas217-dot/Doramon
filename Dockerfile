FROM flowiseai/flowise:latest

USER root

# Direct all data to the temporary writeable folder
ENV DATABASE_PATH=/tmp/.flowise
ENV APIKEY_PATH=/tmp/.flowise
ENV LOG_PATH=/tmp/.flowise/logs

ENV NODE_OPTIONS="--max-old-space-size=420"
ENV PORT=3000

EXPOSE 3000

CMD ["flowise", "start"]
