from flask import Flask, jsonify
from flask_cors import CORS
import mysql.connector
import os

app = Flask(__name__)
CORS(app, resources={r"/*": {"origins": "*"}})

db_config = {
    'user': os.getenv('DB_USER', 'usuario'),
    'password': os.getenv('DB_PASSWORD', 'contraseña'),
    'host': os.getenv('DB_HOST', 'db'),
    'database': os.getenv('DB_NAME', 'tienda'),
}

@app.route('/components')
def get_components():
    try:
        cnx = mysql.connector.connect(**db_config)
        cursor = cnx.cursor(dictionary=True)
        cursor.execute("SELECT * FROM components")
        components = cursor.fetchall()
        cursor.close()
        cnx.close()
        return jsonify(components)
    except mysql.connector.Error as err:
        return jsonify({'error': str(err)}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
