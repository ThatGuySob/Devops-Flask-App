hello.py                                  
from flask import Flask

app = Flask(__name__)

@app.route('/')
def say_hello():

        return '<p>Hello, World, I am a Flask app!</p>' \
                '<a href="/about">about page</a>'


@app.route('/about')
def about_page():       

        return '<p>Hello, World, I am the about page!</p>'