FROM farfetchdev/glpihia:v4

ENV MARIADB_ROOT_PASSWORD=root
ENV MARIADB_DATABASE=glpi
ENV MARIADB_USER=glpiuser
ENV MARIADB_PASSWORD=glpipass

RUN ["bin/bash", "-c", "service apache2 restart"]
#ENTRYPOINT ["bin/bash", "-c", "service apache2 restart"]
#ENTRYPOINT [ "bin/bash", "-c", "apachectl -t" ]
CMD ["apachectl", "-D", "FOREGROUND"]

EXPOSE 80