from django.shortcuts import render
import json

db = "static/data/db.json"

def home(request):
    # Load the JSON data from the file
    with open(db, 'r') as file:
        context = json.load(file)
    
    return render(request, 'base.html', context)
