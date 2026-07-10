FROM flowiseai/flowise:latest

USER root

# Ensure the flowise storage directory has proper write permissions
RUN mkdir -p /root/.flowise && chmod -R 777 /root/.flowise

ENV NODE_OPTIONS="--max-old-space-size=420"
ENV PORT=3000

EXPOSE 3000

CMD ["flowise", "start"]

