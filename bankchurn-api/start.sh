#!/bin/bash

# Crear entorno virtual
python -m venv venv

# Activar entorno virtual
source venv/bin/activate

# Instalar dependencias
pip install --upgrade pip
pip install -r requirements.txt

# Ejecutar la aplicación
# ELIGE UNA DE ESTAS OPCIONES SEGÚN TU ARCHIVO PRINCIPAL:

# Opción 1: Si tu archivo principal se llama app.py
python app.py

# Opción 2: Si usas Flask directamente
# python app.py

# Opción 3: Si usas uvicorn para FastAPI
# uvicorn main:app --host=0.0.0.0 --port=$PORT

# Opción 4: Si usas gunicorn (recomendado para producción)
# gunicorn --bind 0.0.0.0:$PORT app:app

# Opción 5: Si tu archivo tiene otro nombre
# python main.py
# python api.py
# python server.py