#!/bin/bash
gunicorn portfolio.wsgi --bind 0.0.0.0:8000
