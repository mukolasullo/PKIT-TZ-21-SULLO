# Simple Flask app
from flask import Flask, send_from_directory
import os

app = Flask(__name__, static_folder='static')

@app.route('/')
def index():
    return '<h1>Hello from Flask (deployed with Ansible)!</h1><img src="/static/cat.gif" alt="cat">'

@app.route('/static/<path:filename>')
def static_files(filename):
    return send_from_directory(os.path.join(os.path.dirname(__file__), 'static'), filename)

if __name__ == '__main__':
    port = int(os.getenv('PORT', '{{ app_port }}'))
    app.run(host='0.0.0.0', port=port)
