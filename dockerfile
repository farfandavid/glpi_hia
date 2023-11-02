FROM farfetchdev/glpihia:v2

ENV MARIADB_ROOT_PASSWORD=root
ENV MARIADB_DATABASE=glpi
ENV MARIADB_USER=glpiuser
ENV MARIADB_PASSWORD=glpipass

RUN service apache2 restart && apachectl -t

EXPOSE 80