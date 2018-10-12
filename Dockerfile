FROM node:10.10.0-slim
RUN mkdir app
ADD $PWD/app /app
