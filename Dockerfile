FROM felddy/foundryvtt:13

ARG FOUNDRY_USERNAME
ARG FOUNDRY_PASSWORD
ARG FOUNDRY_VERSION=13.346

EXPOSE 30000/tcp

ENTRYPOINT ["./entrypoint.sh"]
CMD ["resources/app/main.mjs", "--port=30000", "--headless", "--noupdate", "--dataPath=/data"]
