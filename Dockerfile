# Usar una imagen base oficial de Python
FROM python:3.10-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo de requerimientos a la imagen
COPY requeriments.txt requeriments.txt

# Instalar las dependencias
RUN pip install --no-cache-dir -r requeriments.txt

# Copiar el contenido de la app a la imagen
COPY . .

# Establecer la variable de entorno para Flask
ENV FLASK_APP=Hola.py
ENV FLASK_RUN_HOST=0.0.0.0

# Exponer el puerto en el que correrá Flask
EXPOSE 5000

# Ejecutar Flask
CMD ["flask", "run"]
