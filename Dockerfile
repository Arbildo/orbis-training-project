FROM nginx:alpine
RUN mkdir app
ADD preguntas.md /app
