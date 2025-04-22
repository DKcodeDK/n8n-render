FROM node:18

# Crear usuario sin root por seguridad
RUN adduser --disabled-password --gecos '' n8n
USER n8n

WORKDIR /home/n8n

# Instalar n8n globalmente
RUN npm install n8n -g

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=Dk
ENV N8N_BASIC_AUTH_PASSWORD=codigkdk
ENV N8N_HOST=n8n.onrender.com
ENV WEBHOOK_URL=https://n8n.onrender.com
ENV N8N_PORT=5678
ENV TZ=Europe/Madrid

EXPOSE 5678

CMD ["n8n"]
