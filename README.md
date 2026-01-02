
---

## 🔹 LAB 1 — Backend (Python API)

### 🎯 Goal
Create a backend API container that returns data.

---

### 📄 backend/app.py

```python
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from Backend API"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

### backend/Dockerfile


FROM python:3.10-slim

WORKDIR /app

COPY app.py .

RUN pip install flask

EXPOSE 5000

CMD ["python", "app.py"]


