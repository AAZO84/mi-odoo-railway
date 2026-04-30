FROM odoo:17.0

USER root

RUN apt-get update && apt-get install -y python3-dev && rm -rf /var/lib/apt/lists/*

COPY ./odoo.conf /etc/odoo/odoo.conf

RUN chown odoo:odoo /etc/odoo/odoo.conf

USER odoo

CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
