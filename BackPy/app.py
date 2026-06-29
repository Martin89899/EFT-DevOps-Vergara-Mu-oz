from flask import Flask, jsonify
import os
import mysql.connector

app = Flask(__name__)

@app.route('/api/products', methods=['GET'])
def get_products():
    try:
        connection = mysql.connector.connect(
            host=os.environ.get('DB_HOST', 'localhost'),
            user=os.environ.get('DB_USER', 'root'),
            password=os.environ.get('DB_PASSWORD', 'rootpassword'),
            database=os.environ.get('DB_NAME', 'products_db'),
            port=int(os.environ.get('DB_PORT', 3306))
        )
        return jsonify({"status": "success", "message": "Conectado a MySQL desde Python", "products": []})
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8082)
