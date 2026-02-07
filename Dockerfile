FROM frappe/bench:latest

USER frappe
WORKDIR /home/frappe

CMD bash -c "if [ ! -d frappe-bench ]; then bench init frappe-bench --frappe-branch version-15; fi && cd frappe-bench && bench start"
