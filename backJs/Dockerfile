FROM node:18-alpine

WORKDIR /app

# Copiar package files
COPY package*.json ./

# Instalar solo dependencias de producción
RUN npm ci --only=production

# Copiar código fuente
COPY . .

# Crear usuario sin privilegios
RUN addgroup -g 1001 -S node && \
    adduser -S node -u 1001

# Cambiar propietario del directorio de trabajo
RUN chown -R node:node /app

# Cambiar a usuario sin privilegios
USER node

# Exponer puerto del servidor
EXPOSE 3000

# Iniciar aplicación
CMD ["node", "server.js"]
