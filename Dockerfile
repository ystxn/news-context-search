FROM nginx:stable
RUN rm -rf /etc/nginx/conf.d
COPY nginx /etc/nginx
COPY dist /usr/share/nginx/html/demo
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
