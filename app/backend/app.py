from flask import Flask, jsonify
from flask_cors import CORS
import socket
from datetime import datetime

app = Flask(__name__)
CORS(app)


@app.route("/")
def home():
    return jsonify({
        "project": "SkyLearn DevOps",
        "status": "Running"
    })


@app.route("/health")
def health():
    return jsonify({
        "status": "Healthy",
        "timestamp": datetime.utcnow().isoformat()
    })


@app.route("/server")
def server():
    return jsonify({
        "hostname": socket.gethostname(),
        "platform": "Docker Container"
    })


@app.route("/version")
def version():
    return jsonify({
        "version": "1.0.0",
        "environment": "Development"
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
