from flask import Flask
from database import init_db

app = Flask(__name__)
mysql = init_db(app)
class Municipios:
    @staticmethod
    def leer_municipios():
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM municipio")
        data = cur.fetchall()
        cur.close()
        return data

   

