#!/bin/bash

# Instala las dependencias desde pyproject.toml
uv pip install .

# Recoge archivos estáticos
python manage.py collectstatic --noinput

# Inicia el servidor
gunicorn --bind 0.0.0.0:$PORT portfolio.wsgi:application
