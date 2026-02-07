FROM frappe/bench:latest

USER frappe
WORKDIR /home/frappe

RUN bench init frappe-bench --frappe-branch version-15

WORKDIR /home/frappe/frappe-bench

RUN bench new-site site1.local \
    --admin-password admin \
    --mariadb-root-password admin \
    --install-app frappe

RUN bench build

CMD ["bench", "start"]
