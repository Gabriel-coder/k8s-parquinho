from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    app_mode = os.environ.get("APP_MODE", "undefined")
    db_password = os.environ.get("DB_PASSWORD", "undefined")
    return f"""
        <h1>Welcome to Kubernetes Playground</h1>
        <p>APP_MODE: {app_mode}</p>
        <p>DB_PASSWORD: {db_password}</p>
        <p>Vai Corinthians! ⚽</p>
    """

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
