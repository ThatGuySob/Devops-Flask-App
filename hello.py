hello.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def say_hello():

        return '<p>Hello World! I am a Flask app!</p>' \
               '<a href="/about">About Page</a>' \
	       '<a href="/contact">Contact Page</a>'

@app.route('/about')
def about_page():

        return '<p>Hello, World, I am the about page! <a href="python.org">Python!</a></p>'
               '<a href="/">Home Page</a>' \
               '<a href="/contact">Contact Page</a>'

@app.route('/contact')
def about_page():

        return '<p>Hello, World c23398751@mytudublin.ie</p>'
               '<a href="/">Home Page</a>' \
               '<a href="/about">About Page</a>'
