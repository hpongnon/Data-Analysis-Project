# 1. Choose a base image (e.g., Python, Node, Ubuntu)
FROM python:3.9-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy your local files into the container
COPY src/requirements.txt requirements.txt

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Define the command to run when the container starts
CMD ["python", "api-ingest.ipynb"]