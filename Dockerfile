FROM flowiseai/flowise:latest

# Set optimization to handle Render's 512MB RAM cap smoothly
ENV NODE_OPTIONS="--max-old-space-size=420"
ENV PORT=3000

EXPOSE 3000

CMD ["flowise", "start"]

