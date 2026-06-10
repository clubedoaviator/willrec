FROM python:3.11-alpine
WORKDIR /site
COPY . .
# Railway injeta a variável PORT; servimos os arquivos estáticos nela.
CMD ["sh", "-c", "python3 -m http.server ${PORT:-8080} --bind 0.0.0.0"]
