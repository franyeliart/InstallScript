# Usar una imagen base de Python
FROM odoo:16.0

# Instalar dependencias adicionales si es necesario
RUN apt-get update && apt-get install -y \
    libldap2-dev \
    libsasl2-dev \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Establecer el directorio de trabajo
WORKDIR /mnt/extra-addons

# Copiar el código del repositorio (si es necesario)
COPY . /mnt/extra-addons

# Configuración adicional si es necesario
CMD ["odoo"]
