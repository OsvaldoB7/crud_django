# Define a imagem base
FROM python:3.9.0-alpine

# Define a pasta de trabalho do container
WORKDIR /app

# Copia os arquivos do projeto para a pasta de trabalho
COPY . /app

# Instala as dependências do projeto
RUN pip install -r requirements.txt

# Expõe a porta 8000 do container
EXPOSE 8000

# Define o comando que será executado quando o container for iniciado
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]