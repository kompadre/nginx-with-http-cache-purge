FROM nginx:1.21.1
COPY ngx_http_cache_purge_module.so /usr/lib/nginx/modules/ngx_http_cache_purge_module.so
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
