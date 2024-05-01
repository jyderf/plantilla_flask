# app.py
from flask import Flask, render_template, jsonify, Blueprint
from models import Municipios
from database import init_db
app = Flask(__name__)
mysql = init_db(app)
my_blueprint = Blueprint('controller', __name__)

# Ruta para la página principal
@app.route('/')
def index():
    data = Municipios.leer_municipios()
    return render_template('index.html',data = data)

if __name__ == '__main__':
    app.run(debug=True)
