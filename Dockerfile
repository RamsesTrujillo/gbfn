# Usa una imagen base de Linux ligera
FROM alpine:latest

# Crea un directorio de trabajo
WORKDIR /app

# Copia todos los archivos del proyecto al contenedor
COPY . .

# Da permisos de ejecución al binario de PocketBase
RUN chmod +x /app/pocketbase

# Expone el puerto que Render usa
EXPOSE 10000

# Comando para iniciar PocketBase
CMD ["./pocketbase", "serve", "--http", "0.0.0.0:10000"]