FROM odoo:17.0
USER root
# Instalamos dependencias adicionales si las necesitas
RUN apt-get update && apt-get install -y python3-dev
USER odoo
