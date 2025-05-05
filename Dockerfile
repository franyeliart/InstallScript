# Imagen base de Odoo 16
FROM odoo:16.0

# Cambiar al usuario root para instalar paquetes
USER root

# Instalar dependencias necesarias
RUN apt-get update && apt-get install -y \
    libldap2-dev \
    libsasl2-dev \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Regresar al usuario de Odoo (odoo)
USER odoo

# Establecer directorio de trabajo
WORKDIR /mnt/extra-addons

# Copiar código fuente si aplica
COPY . /mnt/extra-addons

# Comando por defecto
CMD ["odoo"]
