# Usa uma imagem leve do Nginx para servir arquivos estáticos
FROM nginx:alpine

# Copia seu index.html para a pasta padrão do Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expor a porta 80
EXPOSE 80

# Comando para rodar o Nginx em primeiro plano
CMD ["nginx", "-g", "daemon off;"]