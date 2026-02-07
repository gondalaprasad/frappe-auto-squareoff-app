FROM frappe/bench:latest

USER frappe
WORKDIR /home/frappe/frappe-bench

CMD ["bench", "start"]
