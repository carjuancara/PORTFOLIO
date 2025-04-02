#!/bin/bash
pip install -r requirements.txt
gunicorn portfolio.wsgi --bind 0.0.0.0:8000
