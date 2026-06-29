# Etapa 1: Build con Maven
FROM maven:3.9-eclipse-temurin-17 AS builder

WORKDIR /app

# Copiar archivos de configuración Maven
COPY pom.xml .

# Copiar código fuente
COPY src ./src

# Generar archivos estáticos
RUN mvn clean compile exec:java

# Etapa 2: Servir con Nginx Alpine
FROM nginx:alpine

# Copiar archivos generados desde la etapa de build
COPY --from=builder /app/output /usr/share/nginx/html

# Exponer puerto 80
EXPOSE 80

# Iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
