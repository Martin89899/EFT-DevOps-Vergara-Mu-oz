# Usar imagen liviana oficial de Node.js (Alpine ya incluye el usuario 'node')
FROM node:18-alpine

# Definir el directorio de trabajo de la aplicación
WORKDIR /app

# Copiar archivos de dependencias de Node
COPY package*.json ./

# Instalar solo dependencias de producción para mantener la imagen ligera
RUN npm ci --only=production

# Copiar el resto del código fuente del backend
COPY . .

# Asegurar los permisos del directorio para el usuario existente 'node'
RUN chown -R node:node /app

# 🔒 USAR EL USUARIO SIN PRIVILEGIOS INTEGRADO (Principio de mínimo privilegio)
USER node

#  Exponer el puerto oficial solicitado en la pauta (8081)
EXPOSE 8081

# Comando para iniciar la API de Node.js
CMD ["node", "server.js"]
