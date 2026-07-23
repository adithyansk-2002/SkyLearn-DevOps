import os
from flask import Flask, jsonify
from flask_cors import CORS
import socket
import subprocess
import platform
from datetime import datetime

app = Flask(__name__)
CORS(app)

def run_command(command):
    try:
        return subprocess.check_output(
            command,
            shell=True,
            text=True
        ).strip()
    except Exception:
        return "Unavailable"

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
        "version": os.getenv("APP_VERSION"),
        "environment": os.getenv("APP_ENV")
    })

@app.route("/system")
def system():

    os_name = "Unknown"

    try:
        with open("/etc/os-release") as f:
            for line in f:
                if line.startswith("PRETTY_NAME="):
                    os_name = line.split("=")[1].strip().replace('"', "")
                    break
    except Exception:
        pass

    return jsonify({
        "os": os_name,
        "kernel": platform.release(),
        "python": run_command("python3 --version"),
        "docker": run_command("docker --version"),
        "hostname": socket.gethostname(),
        "uptime": run_command("uptime -p")
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
