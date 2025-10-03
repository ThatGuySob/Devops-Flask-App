#!/bin/bash

sudo apt update && sudo apt upgrade

sudo apt install -y nano vim python-is-python3 python3-venv python3-pip

python -m venv .my_venv

source .my_venv/bin/activate

pip install flask

cat <<EOL > hello.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def say_hello():
    return '<p>Hello World! I am a Flask app!</p>' \
           '<a href="/about">About Page</a>' \
           '<a href="/contact">Contact Page</a>'

@app.route('/about')
def about_page():
    return '<p>Hello, World, I am the about page! <a href="https://python.org">Python!</a></p>' \
           '<a href="/">Home Page</a>' \
           '<a href="/contact">Contact Page</a>'

@app.route('/contact')
def contact_page():
    return '<p>Hello, World c23398751@mytudublin.ie</p>' \
           '<a href="/">Home Page</a>' \
           '<a href="/about">About Page</a>'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
EOL

# Run the Flask app
python hello.py
