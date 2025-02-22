FROM python:3.9-alpine3.20

# Define variáveis de ambiente | garante que output do script apareça em tempo real nos logs do Docker
ENV PYTHONUNBUFFERED=1

# Define diretório de trabalho
WORKDIR /app

# Copar a pasta de trabalho
COPY app /app

# Instala as dependências do Python
RUN pip install --no-cache-dir -r requeriments.txt && adduser -S -H beti

USER beti

# Define o comando de inicialização do contêiner
ENTRYPOINT ["python", "/app/beti.py"]