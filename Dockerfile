FROM n8nio/n8n

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=Dk
ENV N8N_BASIC_AUTH_PASSWORD=codigkdk
ENV N8N_HOST=n8n-render-uyga.onrender.com
ENV WEBHOOK_URL=https://n8n-render-uyga.onrender.com

ENV N8N_PORT=5678
ENV TZ=Europe/Madrid

EXPOSE 5678

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["n8n"]
